package com.mfw.order.controller;

import com.alibaba.fastjson.JSON;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.api.response.AlipayTradePagePayResponse;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.mfw.api.dto.OrderDTO;
import com.mfw.api.dto.UserDTO;
import com.mfw.api.util.Sms;
import com.mfw.order.OrderDetailesPageDTO;
import com.mfw.order.mail.MailComponent;
import com.mfw.order.service.OrderDetailsService;
import com.mfw.order.service.OrderService;
import com.mfw.order.util.AlipayConfig;
import com.mfw.order.util.OrderUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AlipayController {
    private MailComponent mailComponent;
    private UserDTO userDTO;
    private OrderUtil orderUtil = new OrderUtil();

    @Resource
    private RestTemplate restTemplate;
    @Value("${OrderService.hotelOrderServieURLGet}")
    private String hotelOrderServieURLGet;
    @Resource
    private OrderDetailsService orderDetailsService;
    @Resource
    private OrderService orderService;
    @RequestMapping("/pay/{id}")
    @ResponseBody
    public String alipayController(@PathVariable("id")String id, HttpSession session){
        OrderDTO orderByCase = orderService.getOrderByCase(id);
        this.userDTO = (UserDTO) session.getAttribute("user");


        //获得初始化的AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);

        //设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();

        alipayRequest.setReturnUrl(AlipayConfig.return_url);
//        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);

        String type = "";
        if(orderByCase.getTypeId()==1){
            type = "酒店";
        }else if(orderByCase.getTypeId()==2){
            type = "机票";
        }
        alipayRequest.setBizContent("{\"out_trade_no\":\""+ orderByCase.getOrderId() +"\","
                + "\"total_amount\":\""+ orderByCase.getAmount() +"\","
                + "\"subject\":\""+ type +"\","
                + "\"body\":\""+ type + "预定" +"\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");


        AlipayTradePagePayResponse response1 = null;
        try {
            response1 = alipayClient.pageExecute(alipayRequest);
        } catch (AlipayApiException e) {
            e.printStackTrace();
        }
        if(response1.isSuccess()){
            return response1.getBody();
        } else {
            return "调用失败";
        }
    }

    @RequestMapping("/message")
    public String payment(HttpServletRequest request) throws ClientException {
        String out_trade_no = request.getParameter("out_trade_no");

       //查询订单
        OrderDTO orderByCase = orderService.getOrderByCase(out_trade_no);
        orderByCase.setStatus(1);
        orderService.updateOrder(orderByCase);
        this.HotelSMS(orderByCase);
        return "redirect:/getOrderDetails";

    }

    /**
     * 酒店短信通知
     */
    public String HotelSMS(OrderDTO orderDTO) throws ClientException {
        OrderDetailesPageDTO orderDetailes = orderUtil.getOrderDetailes(orderDTO,restTemplate,hotelOrderServieURLGet,orderDetailsService);
        String jsonContent = "{" +
                "\"name\":\"" + userDTO.getName() + "\"," +
                "\"hotelname\":\"" + orderDetailes.getCompanyName() + "\"," +
                "\"orderId\":\"" + orderDTO.getOrderId() + "\"" +
                "}";

        Map<String, String> paramMap = new HashMap<>();
        paramMap.put("phoneNumber", userDTO.getTel());
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
