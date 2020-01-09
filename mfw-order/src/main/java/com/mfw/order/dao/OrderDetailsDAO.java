package com.mfw.order.dao;

import com.mfw.api.dto.OrderDetailsDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface OrderDetailsDAO {

	void addOrderDetails(OrderDetailsDTO orderDetailsDTO);

	List<OrderDetailsDTO> selectOrderDetailsByUserId(String commodityId);

	List<OrderDetailsDTO> selectOrderDetailsById(String id);

}
