package com.mfw.order.service.impl;

import com.mfw.api.dto.OrderDetailsDTO;
import com.mfw.order.dao.OrderDetailsDAO;
import com.mfw.order.service.OrderDetailsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderDetailsServiceImpl implements OrderDetailsService {
    @Resource
    private OrderDetailsDAO orderDetailsDAO;

    @Override
    public void addOrderDetails(OrderDetailsDTO orderDetailsDTO) {
        orderDetailsDAO.addOrderDetails(orderDetailsDTO);
    }

    @Override
    public List<OrderDetailsDTO> selectOrderDetailsByUserId(String commodityId) {
        return orderDetailsDAO.selectOrderDetailsByUserId(commodityId);
    }

    @Override
    public List<OrderDetailsDTO> selectOrderDetailsById(String id) {
        return orderDetailsDAO.selectOrderDetailsById(id);
    }
}
