package com.mfw.user.service;


import com.mfw.api.dto.UserDTO;

public interface LoginService {

    UserDTO loginByAccount(String account);
}
