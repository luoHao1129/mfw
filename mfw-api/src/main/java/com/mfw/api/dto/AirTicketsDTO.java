package com.mfw.api.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class AirTicketsDTO  implements Serializable {
	private int airTicketsID;
	private String fightNum;
	private int numbers;
	private double price;

}
