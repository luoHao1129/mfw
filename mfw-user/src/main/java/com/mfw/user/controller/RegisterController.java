package com.mfw.user.controller;

import com.alibaba.fastjson.JSON;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.mfw.api.dto.UserDTO;
import com.mfw.user.service.RegisterService;
import com.mfw.user.util.Sms;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@RestController
public class RegisterController {

    private String smscd = "a";
    @Resource
    private RegisterService registerService;

    @RequestMapping("/sms")
    public String sendMsg(String phone) throws ClientException {
        Map<String, String> json = new HashMap();
        String phoneNumber = phone;
        String randomNum = createRandomNum(6);
//
        String jsonContent = "{\"code\":\"" + randomNum + "\"}";

//        String jsonContent ="{\"name\":\"不怕得\",\"hotelname\":\"北大青旅\",\"orderId\":\"365846\"}";

        Map<String, String> paramMap = new HashMap<>();
        paramMap.put("phoneNumber", phoneNumber);
        paramMap.put("msgSign", Sms.MSG_SIGN);

        paramMap.put("templateCode", Sms.TEMPLATE_CODE_REGISTER);
//        paramMap.put("templateCode", "SMS_181857021");
        paramMap.put("jsonContent", jsonContent);
        SendSmsResponse sendSmsResponse = Sms.sendSms(paramMap);
        if (!(sendSmsResponse.getCode() != null && sendSmsResponse.getCode().equals("OK"))) {
            if (sendSmsResponse.getCode() == null) {
                json.put("code", "n");
            }
            if (!sendSmsResponse.getCode().equals("OK")) {
                json.put("code", "n");
            }
        }
        smscd = randomNum;
        json.put("code", "y");
        return JSON.toJSONString(json);
    }

    @RequestMapping("/doRegister")
    public ModelAndView register(UserDTO userDTO, String smscode) {
        ModelAndView modelAndView = new ModelAndView();
        if (smscd.equals(smscode)) {

            registerService.registerUser(userDTO);
            modelAndView.addObject("phone", userDTO.getTel());
            modelAndView.setViewName("login");
        } else {
            modelAndView.addObject("error", "验证码错误,请确认后重新输入");
            modelAndView.addObject("user", userDTO);
            modelAndView.setViewName("zhuce");
        }
        return modelAndView;
    }

    @RequestMapping("/isPhone")
    public String isHavePhone(String phone) {
        Map<String, String> msg = new HashMap<>();
        if (registerService.findPhone(phone) > 0) {
            msg.put("msg", "该手机号已被注册");
        } else {
            msg.put("msg", "手机号可用");
        }
        return JSON.toJSONString(msg);
    }

    /**
     * 生成随机数
     *
     * @param num 位数
     * @return
     */
    public static String createRandomNum(int num) {
        String randomNumStr = "";
        for (int i = 0; i < num; i++) {
            int randomNum = (int) (Math.random() * 10);
            randomNumStr += randomNum;
        }
        return randomNumStr;
    }

}
