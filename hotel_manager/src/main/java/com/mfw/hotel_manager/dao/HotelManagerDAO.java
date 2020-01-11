package com.mfw.hotel_manager.dao;

import com.mfw.api.dto.HotelDTO;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface HotelManagerDAO extends Mapper<HotelDTO> {

    void addHotel(HotelDTO hotelDTO);

    void updateHotelById(HotelDTO hotelDTO);

    List<HotelDTO> searchHotelByName(String name);

    List<HotelDTO> getAllHotel();
}
