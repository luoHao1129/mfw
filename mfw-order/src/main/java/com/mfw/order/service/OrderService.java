package com.mfw.order.service;



import com.mfw.api.dto.OrderDTO;

import java.util.List;

public interface OrderService {

    public void addOrder(OrderDTO orderDTO);

    public List<OrderDTO> getOrderByCase(String orderId);
}
