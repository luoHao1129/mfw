package com.mfw.api.dto;

import java.util.Date;

public class OrderDetailsDTO {
	private String commodityId;
	public String getCommodityId() {
		return commodityId;
	}
	public void setCommodityId(String commodityId) {
		this.commodityId = commodityId;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserDetails() {
		return userDetails;
	}
	public void setUserDetails(String userDetails) {
		this.userDetails = userDetails;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	private String id;
	private String userDetails;
	private String orderId;
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
	
	
	
	@Override
	public String toString() {
		return "OrderDetailsDTO [commodityId=" + commodityId + ", id=" + id + ", userDetails=" + userDetails
				+ ", orderId=" + orderId + ", checkInTime=" + checkInTime + ", checkOutTime=" + checkOutTime + "]";
	}
	
	
}
