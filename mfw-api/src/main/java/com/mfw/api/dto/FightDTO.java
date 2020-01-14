
package com.mfw.api.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class FightDTO implements Serializable {
	private int price;
	private String img;
	private List<AirTicketsDTO> airTicketsDTOls;
	private String company;
	private String fightNum;
	private String departureTime;
	private String landingTime;
	private String arrival;
	private String aircraftType;
	private String takeOffAirport;
	private String arrivalAtTheAirport;
	private String departure;

}
