package com.mfw.order.dao;

import com.mfw.api.dto.OrderDTO;

import java.util.List;



public interface OrderDAO {

	void addOrder(OrderDTO orderDTO);

	List<OrderDTO> selectOrderByUserId(String orderId);


}
