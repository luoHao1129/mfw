package com.mfw.api.dto;

import java.util.Date;

public class OrderDTO {
	private String orderId;
	private String userId;
	private double amount;
	private int status;
	private Date orderTime;
	private int people;
	private String details;
	private int typeId;
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Date getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	@Override
	public String toString() {
		return "OrderDTO [orderId=" + orderId + ", userId=" + userId + ", amount=" + amount + ", status=" + status
				+ ", orderTime=" + orderTime + ", people=" + people + ", details=" + details + ", typeId=" + typeId
				+ "]";
	}
	
	
}
