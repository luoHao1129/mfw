package com.mfw.api.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class UserDTO implements Serializable {
	private String id;
	private String account;
	 private String pwd;
	 private String name;
	 private String tel;
	 private String idcard;
	 private Date birthday;
	 private String sex;
	 private String address;
	 private String permission;
	 private String avatar;
	 private String remarks;

	
	
}
