package com.mfw.planeticket.DAO;

import com.mfw.planeticket.DTO.DepartureDateDTO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Date;

@Mapper
public interface DepartureDateDao {
    DepartureDateDTO selectdepartureDate(Date departureDate);
    DepartureDateDTO selectreturnDate(Date returnDate);
}
