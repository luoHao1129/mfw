package com.mfw.user.service;


import com.mfw.user.dto.UserDTO;

public interface LoginService {

    UserDTO loginByAccount(String account);
}
