package com.mfw.order;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import org.springframework.data.annotation.Id;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class OrderDetailesPageDTO {

    @Id
    private String orderId;
    private Date orderTime;
    private String companyPic;
    private String companyName;
    private Date inTime;
    private Date outTime;
    private double orderAmount;
    private String type;
    private int status;

}
