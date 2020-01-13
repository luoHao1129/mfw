package com.mfw.planeticket.service;


import com.mfw.api.dto.FightDTO;
import com.mfw.planeticket.DAO.FightDAO;

import java.util.Date;
import java.util.List;

public interface FightService {
    List<FightDTO> selectPlaneticket(String departure, String arrival);
    FightDTO selectFightDTObyid(String id);
    List<FightDTO> selecttakeOffAirport(String departure);
    List<FightDTO> selectarrivalAtTheAirport(String arrival);
    List<FightDTO> selectdepartureTime(String departure);
    List<FightDTO> selectaircraftType(String departure);
    List<FightDTO> selectcompany(String departure);
    List<FightDTO> screeningInformation(FightDTO fightDTO);


}
