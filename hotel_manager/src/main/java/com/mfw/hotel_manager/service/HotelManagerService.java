package com.mfw.hotel_manager.service;

import com.mfw.api.dto.HotelDTO;

import java.util.List;

public interface HotelManagerService {

    void addHotel(HotelDTO hotelDTO);

    void updateHotelById(HotelDTO hotelDTO);

    List<HotelDTO> searchHotelByName(String name);

    List<HotelDTO> getAllHotel();
}
