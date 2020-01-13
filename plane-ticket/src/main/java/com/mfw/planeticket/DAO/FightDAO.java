package com.mfw.planeticket.DAO;

import java.util.Date;
import java.util.List;

import com.mfw.api.dto.FightDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FightDAO {
	List<FightDTO> selectFightDTOs(String departure, String arrival);
	FightDTO selectFightDTObyid(String id);
	List<FightDTO> selecttakeOffAirport(String departure);
	List<FightDTO> selectarrivalAtTheAirport(String arrival);
	List<FightDTO> selectdepartureTime(String departure);
	List<FightDTO> selectaircraftType(String departure);
	List<FightDTO> selectcompany(String departure);
	List<FightDTO> screeningInformation(FightDTO fightDTO);

}
