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
public class OrderDTO implements Serializable {
	private String orderId;
	private String userId;
	private double amount;
	private int status;
	private Date orderTime;
	private int people;
	private String details;
	private int typeId;

	
	
}
