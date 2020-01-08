package com.mfw.hotel.service;

import com.mfw.api.dto.HotelDTO;

import java.util.List;

public interface HotelService {
    void addTheHotel(HotelDTO hotelDTO);
    HotelDTO selectHotelById(String id);
    List<HotelDTO> selectHotelByCity(String city,int pageNo,int size);
    List<HotelDTO> selectHotelByName(String city,String name);
    int selectPage(String city);
}
