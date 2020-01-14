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
public class OrderDetailsDTO implements Serializable {
	private String commodityId;

	private String id;
	private String userDetails;
	private String orderId;
	private Date checkInTime;
	private Date checkOutTime;
	private Date departureTime;
	private Date landingTime;

	

	
}
