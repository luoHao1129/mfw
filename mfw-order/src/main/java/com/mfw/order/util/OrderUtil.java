package com.mfw.order.util;

import com.mfw.api.dto.HotelDTO;
import com.mfw.api.dto.OrderDTO;
import com.mfw.api.dto.OrderDetailsDTO;
import com.mfw.order.OrderDetailesPageDTO;
import com.mfw.order.service.OrderDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;

public class OrderUtil {



    public OrderDetailesPageDTO getOrderDetailes(OrderDTO orderDTO,RestTemplate restTemplate,String hotelOrderServiceURLGet,OrderDetailsService orderDetailsService){
        OrderDetailsDTO orderDetailsDoTOS = orderDetailsService.selectOrderDetailsById(orderDTO.getDetails());
        HotelDTO hotelDTO = restTemplate.getForObject(hotelOrderServiceURLGet + orderDetailsDoTOS.getCommodityId(), HotelDTO.class);
        OrderDetailesPageDTO orderDetailesPageDTO = new OrderDetailesPageDTO();
        orderDetailesPageDTO.setOrderId(orderDTO.getOrderId())
                .setOrderTime(orderDTO.getOrderTime())
                .setCompanyName(hotelDTO.getHotelName())
                .setCompanyPic(hotelDTO.getHotelPic())
                .setInTime(orderDetailsDoTOS.getCheckInTime())
                .setOutTime(orderDetailsDoTOS.getCheckOutTime())
                .setOrderAmount(orderDTO.getAmount())
                .setType("酒店")
                .setStatus(orderDTO.getStatus());

        return orderDetailesPageDTO;
    }

}
