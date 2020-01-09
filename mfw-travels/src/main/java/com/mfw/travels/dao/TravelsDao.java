package com.mfw.travels.dao;

import java.util.List;

import com.mfw.api.dto.Travels;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Mapper
public interface TravelsDao {

//	添加游记
	void addTravels(Travels travels);

	void deleteTravels(int id);

	void updateTeavels(Travels travels);

	Travels selectTravelsByDestination(String destination);

	Travels selectTravelsById(String id);

	List<Travels> selectAllByAuthorId(String authorId);
	List<Travels> selectLimit(Integer pageNo, Integer pageSize);

	int selectCount();
	
}
