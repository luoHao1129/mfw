package com.mfw.api.dto;

import java.util.Date;

public class RoomDetailsDTO {
	private String hotelId;
	private String roomId;
	private String type;
	private	int numOfBeds;
	private	int numOfPeople;
	private	int roomNum;
	private	double roomPrice;
	private	String userDetails;
	private int RoomState;
	private Date checkInTime;
	private Date checkOutTime;
	
	
	public Date getCheckInTime() {
		return checkInTime;
	}
	public void setCheckInTime(Date checkInTime) {
		this.checkInTime = checkInTime;
	}
	public Date getCheckOutTime() {
		return checkOutTime;
	}
	public void setCheckOutTime(Date checkOutTime) {
		this.checkOutTime = checkOutTime;
	}
	public int getRoomState() {
		return RoomState;
	}
	public void setRoomState(int roomstate) {
		RoomState = roomstate;
	}
	public String getHotelId() {
		return hotelId;
	}
	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getNumOfBeds() {
		return numOfBeds;
	}
	public void setNumOfBeds(int numOfBeds) {
		this.numOfBeds = numOfBeds;
	}
	public int getNumOfPeople() {
		return numOfPeople;
	}
	public void setNumOfPeople(int numOfPeople) {
		this.numOfPeople = numOfPeople;
	}
	public int getRoomNum() {
		return roomNum;
	}
	public void setRoomNum(int roomNum) {
		this.roomNum = roomNum;
	}
	
	public double getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(double roomPrice) {
		this.roomPrice = roomPrice;
	}
	public String getUserDetails() {
		return userDetails;
	}
	public void setUserDetails(String userDetails) {
		this.userDetails = userDetails;
	}
	@Override
	public String toString() {
		return "RoomDetailsDTO [hotelId=" + hotelId + ", roomId=" + roomId + ", type=" + type + ", numOfBeds="
				+ numOfBeds + ", numOfPeople=" + numOfPeople + ", roomNum=" + roomNum + ", roomPrice=" + roomPrice
				+ ", userDetails=" + userDetails + ", RoomState=" + RoomState + ", checkInTime=" + checkInTime
				+ ", checkOutTime=" + checkOutTime + "]";
	}
	
	
	
}
