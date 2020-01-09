package com.mfw.travels.dao;

import java.util.List;

import com.mfw.api.dto.Content;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
public interface ContentDao {

	
	void addContent(Content content);
	void deleteContent(String id);
	void updateContent(Content content);
	Content selectContentById(String id);
	List<Content> selectContentByTravelsId(String travelsId);
}
