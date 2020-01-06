package com.mfw.api.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import javax.persistence.Id;
import java.io.Serializable;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class RoomDetailsDTO implements Serializable {
	@Id
	private String hotelId;
	private String roomId;
	private String type;
	private	int numOfBeds;
	private	int numOfPeople;
	private	int roomNum;
	private	double roomPrice;
	private	String userDetails;
	private int roomState;
	private Date checkInTime;
	private Date checkOutTime;
	

	
	
}
