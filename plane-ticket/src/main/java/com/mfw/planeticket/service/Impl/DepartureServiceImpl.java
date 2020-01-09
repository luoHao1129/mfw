package com.mfw.planeticket.service.Impl;

import com.mfw.planeticket.DAO.DepartureDateDao;
import com.mfw.planeticket.DTO.DepartureDateDTO;
import com.mfw.planeticket.service.DepartureService;

import javax.annotation.Resource;
import java.util.Date;

public class DepartureServiceImpl implements DepartureService {
    @Resource
    private DepartureDateDao departureDateDao;
    @Override
    public DepartureDateDTO selectdepartureDate(Date departureDate) {
        return departureDateDao.selectdepartureDate(departureDate);
    }

    @Override
    public DepartureDateDTO selectreturnDate(Date returnDate) {
        return departureDateDao.selectreturnDate(returnDate);
    }
}
