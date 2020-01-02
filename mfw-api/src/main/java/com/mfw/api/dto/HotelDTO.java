package com.mfw.api.dto;

import java.util.List;

public class HotelDTO {
	private String hotelId;
	private String hotelName;
	private String hotelAddress;
	private String hotelDetails;
	private String hotelPic;
	private String hotelBrand;
	private String hotelCity;
	private List<RoomDetailsDTO> roomInfo;
	
	
	public List<RoomDetailsDTO> getRoomInfo() {
		return roomInfo;
	}
	public void setRoomInfo(List<RoomDetailsDTO> roomInfo) {
		this.roomInfo = roomInfo;
	}
	public String getHotelCity() {
		return hotelCity;
	}
	public void setHotelCity(String hotelCity) {
		this.hotelCity = hotelCity;
	}
	public String getHotelBrand() {
		return hotelBrand;
	}
	public void setHotelBrand(String hotelBrand) {
		this.hotelBrand = hotelBrand;
	}
	
	public String getHotelId() {
		return hotelId;
	}
	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getHotelAddress() {
		return hotelAddress;
	}
	public void setHotelAddress(String hotelAddress) {
		this.hotelAddress = hotelAddress;
	}
	public String getHotelDetails() {
		return hotelDetails;
	}
	public void setHotelDetails(String hotelDetails) {
		this.hotelDetails = hotelDetails;
	}
	public String getHotelPic() {
		return hotelPic;
	}
	public void setHotelPic(String hotelPic) {
		this.hotelPic = hotelPic;
	}
	@Override
	public String toString() {
		return "HotelDTO [hotelId=" + hotelId + ", hotelName=" + hotelName + ", hotelAddress=" + hotelAddress
				+ ", hotelDetails=" + hotelDetails + ", hotelPic=" + hotelPic + ", hotelBrand=" + hotelBrand
				+ ", hotelCity=" + hotelCity + ", roomInfo=" + roomInfo + "]";
	}
	
	
}
