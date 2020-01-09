package com.mfw.planeticket.service;


import com.mfw.api.dto.FightDTO;

import java.util.List;

public interface FightService {
    List<FightDTO> selectPlaneticket(String departure, String arrival);
    FightDTO selectFightDTObyid(String id);

}
