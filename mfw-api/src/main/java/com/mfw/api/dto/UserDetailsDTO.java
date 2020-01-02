package com.mfw.api.dto;

public class UserDetailsDTO {
	private String userDetailsId;
	public String getUserDetailsId() {
		return userDetailsId;
	}
	public void setUserDetailsId(String userDetailsId) {
		this.userDetailsId = userDetailsId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCardId() {
		return cardId;
	}
	public void setCardId(String cardId) {
		this.cardId = cardId;
	}
	private String name;
	private String cardId;
	@Override
	public String toString() {
		return "UserDetailsIdDTO [userDetailsId=" + userDetailsId + ", name=" + name + ", cardId=" + cardId + "]";
	} 
	
	
}
