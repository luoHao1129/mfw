package com.mfw.travels.service;

import com.mfw.api.dto.Travels;

import java.util.List;


public interface TravelsService {

	

	void addTravels(Travels travels);

	void deleteTravels(int id);

	void updateTeavels(Travels travels);

	Travels selectTravelsByDestination(String destination);

	Travels selectTravelsById(String id);

	List<Travels> selectAllByAuthorId(String authorId);

	List<Travels> selectLimit(Integer pageNo, Integer pageSize);

	int selectCount();
}
