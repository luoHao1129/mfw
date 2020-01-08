package com.mfw.order.dao;

import com.mfw.api.dto.UserDetailsDTO;

import java.util.List;

public interface UserDetailsDAO {

	void addUserDetails(UserDetailsDTO userDetailsDTO);

	List<UserDetailsDTO> selectUserDetailsById(String id);
	

}
