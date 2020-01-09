package com.mfw.hotel.service.impl;

import com.mfw.api.dto.RoomDetailsDTO;
import com.mfw.hotel.dao.RoomDAO;
import com.mfw.hotel.service.RoomService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RoomServiceImpl implements RoomService {
    @Resource
    private RoomDAO roomDAO;


    @Override
    public List<RoomDetailsDTO> selectRoomByHotelId(String id) {
        return roomDAO.selectRoomByHotelId(id);
    }

    @Override
    public RoomDetailsDTO selectRoomById(String id) {
        return roomDAO.selectRoomById(id);
    }



}
