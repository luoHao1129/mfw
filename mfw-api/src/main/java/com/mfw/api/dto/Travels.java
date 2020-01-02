package com.mfw.api.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class Travels implements Serializable {

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
	

	
	
	
	
	
	
}
