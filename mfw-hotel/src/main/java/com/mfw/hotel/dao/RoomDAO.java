package com.mfw.hotel.dao;

import com.mfw.api.dto.RoomDetailsDTO;

import java.util.List;

public interface RoomDAO {
    void addRoom(RoomDetailsDTO room);
    void deleteRoom(String id);
    void updateRoom(RoomDetailsDTO room);
    List<RoomDetailsDTO> selectRoomByHotelId(String id);
    RoomDetailsDTO selectRoomById (String id);

}
