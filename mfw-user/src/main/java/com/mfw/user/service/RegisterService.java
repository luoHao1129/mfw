package com.mfw.user.service;


import com.mfw.user.dto.UserDTO;

public interface RegisterService {

    void registerUser(UserDTO userDTO);

    int findPhone(String phone);

}
