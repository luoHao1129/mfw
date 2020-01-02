package com.mfw.api.dto;

public class AirTicketsDTO {
	private int airTicketsID;
	private String fightNum;
	private int numbers;
	private double price;
	public int getAirTicketsID() {
		return airTicketsID;
	}
	public void setAirTicketsID(int airTicketsID) {
		this.airTicketsID = airTicketsID;
	}
	public String getFightNum() {
		return fightNum;
	}
	public void setFightNum(String fightNum) {
		this.fightNum = fightNum;
	}
	public int getNumbers() {
		return numbers;
	}
	public void setNumbers(int numbers) {
		this.numbers = numbers;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
}
