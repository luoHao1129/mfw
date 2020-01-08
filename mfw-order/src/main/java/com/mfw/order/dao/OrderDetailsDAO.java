package com.mfw.order.dao;

import com.mfw.api.dto.OrderDetailsDTO;

import java.util.List;


public interface OrderDetailsDAO {

	void addOrderDetails(OrderDetailsDTO orderDetailsDTO);

	List<OrderDetailsDTO> selectOrderDetailsByUserId(String commodityId);

	List<OrderDetailsDTO> selectOrderDetailsById(String id);

}
