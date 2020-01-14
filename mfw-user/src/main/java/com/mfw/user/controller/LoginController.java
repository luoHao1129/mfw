package com.mfw.user.controller;



import com.mfw.api.dto.UserDTO;
import com.mfw.user.service.LoginService;
import com.mfw.user.util.PageStatic;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

@Controller
public class LoginController {
    @Autowired
    private LoginService loginService;
    @Resource
    private  Configuration cfg;



    @RequestMapping("/login")
    public String login(String account, String password, HttpServletRequest request) {
        UserDTO userDTO = loginService.loginByAccount(account);
        MessageDigest md;
        String pwd = "";
        try {
            md = MessageDigest.getInstance("MD5");
            md.update(password.getBytes());
            pwd = new BigInteger(1, md.digest()).toString(16);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        Map<String, Object> a = new HashMap<>();
        a.put("user", userDTO);
        if (userDTO.getPwd().equals(pwd)) {
            request.getSession().setAttribute("user", userDTO);
            System.out.println(request.getSession().getId());
            return "redirect:http://localhost:8089/main";
        } else {
            return "login";
        }
    }


    @RequestMapping("/toPersonal")
    public String toPersonal(){
        return "personal";
    }

}
