package com.mfw.order.service;

import com.mfw.api.dto.UserDetailsDTO;

import java.util.List;

public interface UserDetailsService {

    void addUserDetails(UserDetailsDTO userDetailsDTO);

    List<UserDetailsDTO> selectUserDetailsById(String id);
}
