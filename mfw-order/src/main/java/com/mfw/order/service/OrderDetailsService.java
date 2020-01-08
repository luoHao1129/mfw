package com.mfw.order.service;

import com.mfw.api.dto.OrderDetailsDTO;

import java.util.List;

public interface OrderDetailsService {

    void addOrderDetails(OrderDetailsDTO orderDetailsDTO);

    List<OrderDetailsDTO> selectOrderDetailsByUserId(String commodityId);

    List<OrderDetailsDTO> selectOrderDetailsById(String id);
}
