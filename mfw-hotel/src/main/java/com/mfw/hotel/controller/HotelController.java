package com.mfw.hotel.controller;

import com.mfw.api.dto.HotelDTO;
import com.mfw.hotel.service.HotelService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
public class HotelController {
    @Resource
    HotelService hotelService;

    @RequestMapping("/hotelId")
    public List<HotelDTO> hotelId(String id){
        List<HotelDTO> hotelDTO= hotelService.selectHotelById(id);
        return hotelDTO;
    }

}
