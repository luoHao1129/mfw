package com.mfw.hotel.dao;

import com.mfw.api.dto.HotelDTO;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface HotelDAO extends Mapper<HotelDTO> {
    void addTheHotel(HotelDTO hotelDTO);

    HotelDTO selectHotelById(String id);

    List<HotelDTO> selectHotelByCity(String city,int pageNo,int size);


    List<HotelDTO> selectHotelByName(String city,String name);

    int selectPage(String city);

}
