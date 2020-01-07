package com.mfw.hotel.service;

import com.mfw.api.dto.HotelDTO;

import java.util.List;

public interface HotelService {
    void addTheHotel(HotelDTO hotelDTO);
    HotelDTO selectHotelById(String id);
    List<HotelDTO> selectHotelByCity(String city);
    List<HotelDTO> selectHotelByName(String name);

}
