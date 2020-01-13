package com.mfw.hotel.dao;

import com.mfw.api.dto.HotelDTO;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface HotelDAO extends Mapper<HotelDTO> {


    HotelDTO selectHotelById(String id);

    List<HotelDTO> selectHotelByCity(String city,int pageNo,int size);

    List<HotelDTO> selectHotelByName(String city,String name);

    int selectPage(String city);

    List<HotelDTO> selectHotelByBrand(String city,String brand);

    List<HotelDTO> selectHotelByPrice(String city,Integer min,Integer max);

}
