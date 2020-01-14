package com.mfw.hotel.controller;

import com.mfw.api.dto.HotelDTO;
import com.mfw.api.dto.RoomDetailsDTO;
import com.mfw.hotel.service.HotelService;
import com.mfw.hotel.service.RoomService;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
public class HotelOrderController {

    @Resource
    HotelService hotelService;
    @Resource
    RoomService roomService;

    @RequestMapping("/getHotelDTO/{roomId}")
    public HotelDTO getHotelDTO(@PathVariable("roomId") String roomId){

        RoomDetailsDTO roomDetailsDTO = roomService.selectRoomById(roomId);

        HotelDTO hotelDTO = hotelService.selectHotelById(roomDetailsDTO.getHotelId());

        return hotelDTO;
    }
}
