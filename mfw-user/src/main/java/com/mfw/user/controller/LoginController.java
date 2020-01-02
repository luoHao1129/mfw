package com.mfw.user.controller;


import com.mfw.user.dto.UserDTO;
import com.mfw.user.service.LoginService;
import com.mfw.user.util.ToHtml;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

@Controller
public class LoginController {
    @Autowired
    private LoginService loginService;


    @RequestMapping("/login")
    public String login(String account, String password, HttpSession session, HttpServletRequest request) {
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
        a.put("a", "a");
        ToHtml.toHtmlFile(a, "login", request);
        if (userDTO.getPwd().equals(pwd)) {
            session.setAttribute("user", userDTO);
            return "personal";
        } else {
            return "login";
        }
    }
}
