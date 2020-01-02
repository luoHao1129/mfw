package com.mfw.user.service.impl;


import com.mfw.api.dto.UserDTO;
import com.mfw.user.dao.UserDao;

import com.mfw.user.service.LoginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class LoginServiceImpl implements LoginService {
    @Resource
    private UserDao userDao;


    @Override
    public UserDTO loginByAccount(String account) {
        return userDao.selectUserByAccount(account);
    }
}
