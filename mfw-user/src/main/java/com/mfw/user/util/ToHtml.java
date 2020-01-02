package com.mfw.user.util;

import freemarker.template.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;


import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.time.temporal.Temporal;
import java.util.Map;

public class ToHtml {

    private static Configuration configuration = new Configuration();

    public static void toHtmlFile(Map<String, Object> data, String ftlName, HttpServletRequest request) {
        Resource resource = new ClassPathResource("");
        String contextPath = null;
        try {
            contextPath = resource.getFile().getAbsolutePath();
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(contextPath);
        String ftlFile = contextPath + "templates\\" + ftlName + ".ftl";
        try {
            String path = request.getSession().getServletContext().getRealPath("/") + "static\\" + ftlName + ".html";
            System.out.println(path);
            Temporal temporal = (Temporal) configuration.getTemplate(ftlFile);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
