
package com.mfw.api.dto;

import java.util.Date;
import java.util.List;

public class FightDTO {
	private int price;
	private String img;
	private List<AirTicketsDTO> AirTicketsDTOls;
	private String company;
	private String departure;
	private String arrival;
	private String aircraftType;
	private String fightNum;
	private Date departureTime;
	private Date landingTime;
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}

	public List<AirTicketsDTO> getAirTicketsDTOls() {
		return AirTicketsDTOls;
	}
	public void setAirTicketsDTOls(List<AirTicketsDTO> airTicketsDTOls) {
		AirTicketsDTOls = airTicketsDTOls;
	}
	
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getDeparture() {
		return departure;
	}
	public void setDeparture(String departure) {
		this.departure = departure;
	}
	public String getArrival() {
		return arrival;
	}
	public void setArrival(String arrival) {
		this.arrival = arrival;
	}
	public String getAircraftType() {
		return aircraftType;
	}
	public void setAircraftType(String aircraftType) {
		this.aircraftType = aircraftType;
	}
	public String getFightNum() {
		return fightNum;
	}
	public void setFightNum(String fightNum) {
		this.fightNum = fightNum;
	}
	public Date getDepartureTime() {
		return departureTime;
	}
	public void setDepartureTime(Date departureTime) {
		this.departureTime = departureTime;
	}
	public Date getLandingTime() {
		return landingTime;
	}
	public void setLandingTime(Date landingTime) {
		this.landingTime = landingTime;
	}

	@Override
	public String toString() {
		return "FightDTO [AirTicketsDTOls=" + AirTicketsDTOls + ", company=" + company + ", departure=" + departure
				+ ", arrival=" + arrival + ", aircraftType=" + aircraftType + ", fightNum=" + fightNum
				+ ", departureTime=" + departureTime + ", landingTime=" + landingTime + "]";
	}
}
