package com.mfw.planeticket.DAO;

import java.util.Date;
import java.util.List;

import com.mfw.api.dto.FightDTO;


public interface FightDAO {
	List<FightDTO> selectFightDTOs(String departure, String arrival);
	FightDTO selectFightDTObyid(String id);
}
