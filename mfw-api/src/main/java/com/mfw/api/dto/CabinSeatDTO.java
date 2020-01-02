package com.mfw.api.dto;

public class CabinSeatDTO {
	private String cabinSeatID;
	private String cabinSeatName;
	public String getCabinSeatID() {
		return cabinSeatID;
	}
	public void setCabinSeatID(String cabinSeatID) {
		this.cabinSeatID = cabinSeatID;
	}
	public String getCabinSeatName() {
		return cabinSeatName;
	}
	public void setCabinSeatName(String cabinSeatName) {
		this.cabinSeatName = cabinSeatName;
	}
	public String getCabinSeatType() {
		return cabinSeatType;
	}
	public void setCabinSeatType(String cabinSeatType) {
		this.cabinSeatType = cabinSeatType;
	}
	private String cabinSeatType;
}
