package com.mfw.user.dao;



import com.mfw.api.dto.UserDTO;
import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface UserDao {

    void addUser(UserDTO userDTO);

    int selectPhone(String phone);

    UserDTO selectUserByAccount(String account);
}
