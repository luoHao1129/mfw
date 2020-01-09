package com.mfw.planeticket.DAO;

import com.mfw.api.dto.AirTicketsDTO;
import com.mfw.api.dto.UserDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AirTicketsDAO  {
    AirTicketsDTO selectflight(String fightNum);
}
