package com.mfw.planeticket.service.Impl;

import com.mfw.api.dto.FightDTO;
import com.mfw.planeticket.DAO.FightDAO;
import com.mfw.planeticket.service.FightService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class FightServiceImpl implements FightService {
    @Resource
    private FightDAO fightDAO;


    @Override
    public List<FightDTO> selectPlaneticket(String departure, String arrival) {
        return fightDAO.selectFightDTOs(departure,arrival) ;
    }
}
