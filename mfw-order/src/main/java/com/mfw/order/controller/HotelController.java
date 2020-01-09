package com.mfw.order.controller;

import com.alibaba.fastjson.JSON;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.mfw.api.util.Sms;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class HotelController {

    @RequestMapping("/HotelSMS")
    public String HotelSMS() throws ClientException {
        String jsonContent = "{" +
                "\"name\":\"不怕得\"," +
                "\"hotelname\":\"北大青旅\"," +
                "\"orderId\":\"123\"" +
                "}";

        Map<String, String> paramMap = new HashMap<>();
        paramMap.put("phoneNumber", "13881339354");
        paramMap.put("msgSign", Sms.MSG_SIGN);
        paramMap.put("templateCode", Sms.TEMPLATE_CODE_HOTEL);
        paramMap.put("jsonContent", jsonContent);
        SendSmsResponse sendSmsResponse = Sms.sendSms(paramMap);
        Map<String,Object> json = new HashMap<>();
        if (!(sendSmsResponse.getCode() != null && sendSmsResponse.getCode().equals("OK"))) {
            if (sendSmsResponse.getCode() == null) {
                json.put("code", "n");
            }
            if (!sendSmsResponse.getCode().equals("OK")) {
                json.put("code", "n");
            }
        }
        json.put("code", "y");
        return JSON.toJSONString(json);
    }
}
