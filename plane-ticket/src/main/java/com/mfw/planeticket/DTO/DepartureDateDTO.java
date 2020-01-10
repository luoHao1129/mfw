package com.mfw.planeticket.DTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.util.Date;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class DepartureDateDTO {
    private String departure;
    private String arrival;
    private String departureDate;
    private String returnDate;
}
