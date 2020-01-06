package com.mfw.hotel.service.impl;

import com.mfw.api.dto.HotelDTO;
import com.mfw.hotel.dao.HotelDAO;
import com.mfw.hotel.service.HotelService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class HotelServiceImpl implements HotelService {
    @Resource
    HotelDAO hotelDAO;


    @Override
    public void addTheHotel(HotelDTO hotelDTO) {
        hotelDAO.addTheHotel(hotelDTO);
    }

    @Override
    public List<HotelDTO> selectHotelById(String id) {
        return hotelDAO.selectHotelById(id);
    }
}
