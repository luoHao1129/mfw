package com.mfw.api.dto;

public class Content {

	private String id;
	private String text;
	private String pic;
	private int sequence;
	private String travelsId;
	
	
	
	public String getTravelsId() {
		return travelsId;
	}
	public void setTravelsId(String travelsId) {
		this.travelsId = travelsId;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public int getSequence() {
		return sequence;
	}
	public void setSequence(int sequence) {
		this.sequence = sequence;
	}
	@Override
	public String toString() {
		return "Content [id=" + id + ", text=" + text + ", pic=" + pic + ", sequence=" + sequence + ", travelsId="
				+ travelsId + "]";
	}
	
	
	
	
}
