package com.mfw.hotel.dao;

import com.mfw.api.dto.HotelDTO;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface HotelDAO extends Mapper<HotelDTO> {
    void addTheHotel(HotelDTO hotelDTO);

    List<HotelDTO> selectHotelById(String id);

}
