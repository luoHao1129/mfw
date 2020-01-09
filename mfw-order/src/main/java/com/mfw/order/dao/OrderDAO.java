package com.mfw.order.dao;

import com.mfw.api.dto.OrderDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface OrderDAO {

	void addOrder(OrderDTO orderDTO);

	List<OrderDTO> selectOrderByUserId(String orderId);


}
