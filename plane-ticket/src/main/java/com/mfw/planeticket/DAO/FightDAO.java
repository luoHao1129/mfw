package com.mfw.planeticket.DAO;

import java.util.Date;
import java.util.List;

import com.mfw.api.dto.FightDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FightDAO {
	List<FightDTO> selectFightDTOs(String departure, String arrival);
	FightDTO selectFightDTObyid(String id);
}
