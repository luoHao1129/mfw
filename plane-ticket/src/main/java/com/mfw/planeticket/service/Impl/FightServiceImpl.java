package com.mfw.planeticket.service.Impl;

import com.mfw.api.dto.FightDTO;
import com.mfw.planeticket.DAO.FightDAO;
import com.mfw.planeticket.service.FightService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;


@Service
public class FightServiceImpl implements FightService {
    @Resource
    private FightDAO fightDAO;


    @Override
    public List<FightDTO> selectPlaneticket(String departure, String arrival) {
        return fightDAO.selectFightDTOs(departure,arrival) ;
    }

    @Override
    public FightDTO selectFightDTObyid(String id) {
        return fightDAO.selectFightDTObyid(id);
    }

    @Override
    public List<FightDTO> selecttakeOffAirport(String departure) {
        return fightDAO.selecttakeOffAirport(departure);
    }

    @Override
    public List<FightDTO> selectarrivalAtTheAirport(String arrival) {
        return fightDAO.selectarrivalAtTheAirport(arrival);
    }

    @Override
    public List<FightDTO> selectdepartureTime(String departure) {
        return fightDAO.selectdepartureTime(departure);
    }

    @Override
    public List<FightDTO> selectaircraftType(String departure) {
        return fightDAO.selectaircraftType(departure);
    }

    @Override
    public List<FightDTO> selectcompany(String departure) {
        return fightDAO.selectcompany(departure);
    }

    @Override
    public List<FightDTO> screeningInformation(FightDTO fightDTO) {
        return fightDAO.screeningInformation(fightDTO);
    }


}
