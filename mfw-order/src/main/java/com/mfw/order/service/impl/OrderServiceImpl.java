package com.mfw.order.service.impl;

import com.alipay.api.domain.OrderDetail;
import com.mfw.api.dto.OrderDTO;
import com.mfw.order.dao.OrderDAO;

import com.mfw.order.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Service
public class OrderServiceImpl implements OrderService {
    @Resource
    private OrderDAO orderDAO;

    @Override
    public void addOrder(OrderDTO orderDTO) {

        orderDAO.addOrder(orderDTO);
    }

    @Override
    public List<OrderDTO> getOrderByCase(String orderId) {
        return orderDAO.selectOrderByUserId(orderId);
    }


    }





