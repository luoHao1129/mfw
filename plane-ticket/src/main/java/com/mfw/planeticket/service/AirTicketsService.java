package com.mfw.planeticket.service;

import com.mfw.api.dto.AirTicketsDTO;

public interface AirTicketsService {
    AirTicketsDTO selectflight(String fightNum);
}
