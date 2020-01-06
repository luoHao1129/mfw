package com.mfw.api.util;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.springframework.core.io.ClassPathResource;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.Map;

public class PageStatic {


    /**
     * 页面静态化方法，传入数据，模板，configuration对象，生成的html页面的保存路径
     * 通过方法，能自动识别模板并生成html文件保存到指点路径
     * @param cfg
     * @param data
     * @param ftlName
     * @param pagePath
     */
    public static void toHtmlFile(Configuration cfg, Map<String, Object> data, String ftlName,String pagePath) {

        String ftlFile =  ftlName + ".ftl";
        try {
            Template temp = cfg.getTemplate(ftlFile);
            String path = pagePath + ftlName + ".html";
            System.out.println(path);
            Writer file = new FileWriter(new File(path.substring(path.indexOf("/"))));
            temp.process(data, file);
            file.flush();
            file.close();

        } catch (IOException | TemplateException e) {
            e.printStackTrace();
        }
    }

    /**
     * 页面静态化副本方法，调用副本方法是为了防止在更新静态化页面的时候，出现有用户正好在访问的情况
     * 因此需要副本来顶替原网页
     * @param cfg
     * @param data
     * @param ftlName
     * @param pagePath
     */
    public static void toRefreshHtmlFile(Configuration cfg, Map<String, Object> data, String ftlName,String pagePath) {

        String ftlFile =  ftlName + ".ftl";
        try {
            Template temp = cfg.getTemplate(ftlFile);
            String path = pagePath + ftlName + "Refresh.html";
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
