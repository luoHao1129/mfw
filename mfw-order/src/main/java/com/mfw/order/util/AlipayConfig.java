package com.mfw.order.util;

import org.springframework.context.annotation.PropertySource;

import java.io.FileWriter;
import java.io.IOException;

@PropertySource("classpath:alipay.properties")
public class AlipayConfig {

    //1.APPID
    public static String app_id = "2016102100729514";

    //2.私钥
    public static String merchant_private_key = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDHG9nfcHImPjldrfPf1IersxA69Rqg9GNlvcAnnx0fl0VtQu5f/zrl33PnkSzbnZj/ctZbSY124fibDpYyqITZHzbq+2I1qeeEPQcYq/pVxv7O2yN34KTMSNpGO0gM5s+SNBprSyhDYVSdsirYvrz3Y5M12M/jwaUUY+6/OvxQdEXnj3X44sPSEdaLD18NLa9ZVQ+r1D4n8gBJsR65fsanMdY1rG7oe9DuaSha9NIlxm0TlZWCGa1g0VPtGIMwqC30gta/Pgow1VYPCpuFkuDk9eBeW++iZB7WDBj2pXKndAZ4eB+JXGHZ99ghC83pv5Boto+0ZLCg3ZxAedljZgUVAgMBAAECggEBALQ3wkma5sc0tQnU5JNpM++2YO9sYNDkw38Yc++o9lxcuGuAFHDxfKcKTUeBQL/7crtsfxcbiR7cw//dARgTLkO0HCoupSL7iWFJN74eE7VGK+ahtQXRYHjDTEYbbEi5NZIY9Py+h1ANreAanuuWIUYua9VmTCzTXo8JMNUIF87dBo9ftT1HsyX+ezZzBnJm+0WSYEGCIdH/ga4UH3Bb8FQPiZC9TER9qsZ/O+kpQiwXzlGtbxyKzISCjmcXyLdNOAshq7IN5xWf7cnAM/y9OgbmRu+XpYH4MuGmeeHbTCFQgGHouHdZtVJF0K2zRgqHHP6TBoZitY4wggHMs2PC81UCgYEA5efzrkjA9pbfdJqeWtFjVf6wUXF441lhfGcZMjM+qX6BZXM0ezpzFA/nGzPoa58vn73I45OY8tAWGs43aeUEcbtVOj+2jP7JgjbNRIwPWLYbH8lfPiv4DDVFbXVcVorlZ5m4Xs5328sItZXjrrkrR969WKTR+mAqqDvx7SCCojMCgYEA3bURRVwaL+EyDtmvHEzSi72/5vbAIvvAlHe3naZHkYEpHcOiZovKLDMDQGP53h6XNLtRUxHInlx7QKytgqct2g9r0niKJZpRCSp5bpX48LHOp/3yCrC3A8CtAKJTTsiECAKwdxeBeOicTg0+WTo7kHXqDcRVQvtv2SsxGY+HQ5cCgYEAjUhXdZj8DA13UJ7cBY97bhNPox0KXxxETkDFORZIwbweJIwBimDG62NCcHMbt1dh2ta0JzZC3aSGkP59CzRT4NhwbZVNx6OjjcPDrQYtQCTY0lXbk8dNbaMnATcIAZ7ljx7mMEzNV2KT/ZMZEfx03nvA/EJ9T1HdpPkBmOlLngUCgYEAwiZhNHseV5V+j7Cjf0XrDwKgvbKRuVD7aUiZXA4UGGCiT/VVDzYVWrVlgIrMcm4Zfc0Xv4YQSFW2fYF6BLNAHPhqNIrod1t24W73nhbpRGaBEW35+tCbxEaDec2s5I4FyToJrJDCCc6xqkxAsESlirEnwNyQybKEVQpU2gxtqIsCgYA8wBOKreLOZjUa0gVAalmMkv96FZGSVGggJYfATTkTPPal3vntUt0I6qlPHqDqWZ7YmibWVQCQ4PDAvEgmnxRwa2ynQ1OYUY00PxC6GVa4NofHZsPn0Js7uxzYrBhUcAOtFA1umRYFS2sz464paoXcutatjz2xDsleTvSWeAQsMg==";

    //3.支付宝公钥
    public static String alipay_public_key = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDIgHnOn7LLILlKETd6BFRJ0GqgS2Y3mn1wMQmyh9zEyWlz5p1zrahRahbXAfCfSqshSNfqOmAQzSHRVjCqjsAw1jyqrXaPdKBmr90DIpIxmIyKXv4GGAkPyJ/6FTFY99uhpiq0qadD/uSzQsefWo0aTvP/65zi3eof7TcZ32oWpwIDAQAB";

    //4.服务器异步通知页面路径
    public static String notify_url = "http://localhost:8081/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

    //5.服务器同步通知页面路径
    public static String return_url = "http://localhost:8081/alipay.trade.page.pay-JAVA-UTF-8/return_url.jsp";

    //6.签名方式
    public static String sign_type = "RSA2";

    //7.字符编码
    public static String charset = "UTF-8";

    //8.支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    //9.支付宝网关
    public static String log_path = "C:\\";

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
