package com.mfw.hotel.service;

import com.mfw.api.dto.RoomDetailsDTO;

import java.util.List;

public interface RoomService {

    List<RoomDetailsDTO> selectRoomByHotelId(String id);
    RoomDetailsDTO selectRoomById (String id);

}
