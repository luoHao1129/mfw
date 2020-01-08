package com.mfw.user.service.impl;


import com.mfw.api.dto.UserDTO;
import com.mfw.user.dao.UserDao;

import com.mfw.user.service.RegisterService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@Service
public class RegisterServiceImpl implements RegisterService {

    @Resource
    private UserDao userDao;

    @Override
    public void registerUser(UserDTO userDTO) {
        userDTO.setPermission("2");
        userDTO.setAvatar("img/morengtouxiang.jpg");
        String pwd = "";
        MessageDigest md;
        try {
            md = MessageDigest.getInstance("MD5");
            md.update(userDTO.getPwd().getBytes());
            pwd = new BigInteger(1, md.digest()).toString(16);
            userDTO.setPwd(pwd);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        userDao.addUser(userDTO);
    }

    @Override
    public int findPhone(String phone) {
        return userDao.selectPhone(phone);
    }
}
