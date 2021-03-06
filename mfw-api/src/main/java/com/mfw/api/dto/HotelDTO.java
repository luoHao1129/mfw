package com.mfw.api.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import org.springframework.data.annotation.Id;


import java.io.Serializable;
import java.util.List;


@Data

@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class HotelDTO implements Serializable {

	@Id
	private String hotelId;
	private String hotelName;
	private String hotelAddress;
	private String hotelDetails;
	private String hotelPic;
	private String hotelBrand;
	private String hotelCity;
	private int hotelType;
	private List<RoomDetailsDTO> roomInfo;


}
