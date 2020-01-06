package com.mfw.hotel.service;

import com.mfw.api.dto.HotelDTO;

import java.util.List;

public interface HotelService {
    void addTheHotel(HotelDTO hotelDTO);
    List<HotelDTO> selectHotelById(String id);
}
