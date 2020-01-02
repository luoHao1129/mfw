package com.mfw.api.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class Content  implements Serializable {

	private String id;
	private String text;
	private String pic;
	private int sequence;
	private String travelsId;
	

	
	
	
}
