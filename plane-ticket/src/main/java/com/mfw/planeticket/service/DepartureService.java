package com.mfw.planeticket.service;

import com.mfw.planeticket.DTO.DepartureDateDTO;

import java.util.Date;

public interface DepartureService {
    DepartureDateDTO selectdepartureDate(Date departureDate);
    DepartureDateDTO selectreturnDate(Date returnDate);
}
