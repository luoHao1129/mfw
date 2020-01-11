package com.mfw.hotel_manager.service.impl;

import com.mfw.api.dto.HotelDTO;
import com.mfw.hotel_manager.dao.HotelManagerDAO;
import com.mfw.hotel_manager.service.HotelManagerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class HotelManagerServiceImpl implements HotelManagerService {
    @Resource
    HotelManagerDAO hotelManagerDAO;

    @Override
    public void addHotel(HotelDTO hotelDTO) {
        hotelManagerDAO.addHotel(hotelDTO);
    }

    @Override
    public void updateHotelById(HotelDTO hotelDTO) {
        hotelManagerDAO.updateHotelById(hotelDTO);
    }

    @Override
    public List<HotelDTO> searchHotelByName(String name) {
        return hotelManagerDAO.searchHotelByName(name);
    }

    @Override
    public List<HotelDTO> getAllHotel() {
        List<HotelDTO> hotelDTOList = hotelManagerDAO.selectAll();
        return hotelDTOList;
    }


}
