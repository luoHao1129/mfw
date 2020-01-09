package com.mfw.order.dao;

import com.mfw.api.dto.UserDetailsDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserDetailsDAO {

	void addUserDetails(UserDetailsDTO userDetailsDTO);

	List<UserDetailsDTO> selectUserDetailsById(String id);
	

}
