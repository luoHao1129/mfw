package com.mfw.order.service;



import com.mfw.api.dto.OrderDTO;

import java.util.List;

public interface OrderService {

    public void addOrder(OrderDTO orderDTO);

    public OrderDTO getOrderByCase(String orderId);

    public List<OrderDTO> getOrderDetailsById(String userId);

    public void updateOrder(OrderDTO orderDTO);
}
