package com.mfw.user.util;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.springframework.core.io.ClassPathResource;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.Map;

public class PageStatic {


    public static void toHtmlFile(Configuration cfg, Map<String, Object> data, String ftlName) {
        org.springframework.core.io.Resource resource = new ClassPathResource("");
        String contextPath = "e:/webpath/";
        String ftlFile =  ftlName + ".ftl";
        try {
            Template temp = cfg.getTemplate(ftlFile);
            String path = "e:/webpath/" + ftlName + ".html";
            System.out.println(path);
            Writer file = new FileWriter(new File(path.substring(path.indexOf("/"))));
            temp.process(data, file);
            file.flush();
            file.close();

        } catch (IOException | TemplateException e) {
            e.printStackTrace();
        }
    }
}
