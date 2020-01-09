package com.mfw.order.service.impl;

import com.mfw.api.dto.UserDetailsDTO;
import com.mfw.order.dao.UserDetailsDAO;
import com.mfw.order.service.UserDetailsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
    @Resource
    private UserDetailsDAO userDetailsDAO;

    @Override
    public void addUserDetails(UserDetailsDTO userDetailsDTO) {
        userDetailsDAO.addUserDetails(userDetailsDTO);
    }

    @Override
    public List<UserDetailsDTO> selectUserDetailsById(String id) {
        return userDetailsDAO.selectUserDetailsById(id);
    }
}
