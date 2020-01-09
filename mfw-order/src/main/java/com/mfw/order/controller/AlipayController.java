package com.mfw.order.controller;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.api.response.AlipayTradePagePayResponse;
import com.mfw.order.util.AlipayConfig;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RestController
public class AlipayController {

    @RequestMapping("/pay")
    public String alipayController(){

        //获得初始化的AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);

        //设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
//        alipayRequest.setReturnUrl(AlipayConfig.return_url);
//        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);

        //商户订单号，商户网站订单系统中唯一订单号，必填
        //String out_trade_no = new String(request.getParameter("1001").getBytes("ISO-8859-1"),"UTF-8");
        //付款金额
        //String total_amount = new String(request.getParameter("1").getBytes("ISO-8859-1"),"UTF-8");
        //订单名称
        //String subject = new String (request.getParameter("123").getBytes("ISO-8859-1"),"UTF-8");
        //商品描述
        //String body = new String(request.getParameter("没有描述").getBytes("ISO-8859-1"),"UTF-8");

        alipayRequest.setBizContent("{\"out_trade_no\":\""+ "2365987548" +"\","
                + "\"total_amount\":\""+ "1000" +"\","
                + "\"subject\":\""+ "酒店" +"\","
                + "\"body\":\""+ "酒店预订" +"\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

        //请求
//        String form = "";
//        try{
//            form = alipayClient.pageExecute(alipayRequest).getBody(); //调用SDK生成表单
//        }catch(AlipayApiException e){
//            e.printStackTrace();
//        }
//        response.setContentType("text/html;charset=" + AlipayConfig.charset);
//        response.getWriter().write(form);//直接将完整的表单html输出到页面
//        response.getWriter().flush();
//        response.getWriter().close();
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
}
