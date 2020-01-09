package com.mfw.planeticket.service.Impl;

import com.mfw.api.dto.AirTicketsDTO;
import com.mfw.planeticket.DAO.AirTicketsDAO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
@Service
public class AirTicketsServiceImpl implements com.mfw.planeticket.service.AirTicketsService {
    @Resource
    private AirTicketsDAO airTicketsDAO;
    @Override
    public AirTicketsDTO selectflight(String fightNum) {
        return airTicketsDAO.selectflight(fightNum);
    }
}
