package com.mfw.api.dto;

import java.util.Date;
import java.util.List;

public class Travels {

	private String id;
	private String authorId;
	private String title;
	private String destination;
	private String travelstype;
	private Date date;
	private List<Content> contents;
	private Integer pageviews;
	private Integer likeNum;
	private String tpic;
	
	
	public String getTpic() {
		return tpic;
	}
	public void setTpic(String tpic) {
		this.tpic = tpic;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAuthorId() {
		return authorId;
	}
	public void setAuthorId(String authorId) {
		this.authorId = authorId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getTravelstype() {
		return travelstype;
	}
	public void setTravelstype(String travelstype) {
		this.travelstype = travelstype;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public List<Content> getContents() {
		return contents;
	}
	public void setContents(List<Content> contents) {
		this.contents = contents;
	}
	public Integer getPageviews() {
		return pageviews;
	}
	public void setPageviews(Integer pageviews) {
		this.pageviews = pageviews;
	}
	public Integer getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(Integer likeNum) {
		this.likeNum = likeNum;
	}
	@Override
	public String toString() {
		return "Travels [id=" + id + ", authorId=" + authorId + ", title=" + title + ", destination=" + destination
				+ ", travelstype=" + travelstype + ", date=" + date + ", contents=" + contents + ", pageviews="
				+ pageviews + ", likeNum=" + likeNum + ", tpic=" + tpic + "]";
	}
	
	
	
	
	
	
}
