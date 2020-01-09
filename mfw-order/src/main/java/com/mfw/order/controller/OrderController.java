package com.mfw.order.controller;


import com.mfw.api.dto.*;
import com.mfw.order.mail.MailComponent;
import com.mfw.order.service.OrderDetailsService;
import com.mfw.order.service.OrderService;
import com.mfw.order.service.UserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.Random;
import java.util.UUID;


@RestController
@RequestMapping("/OrderController")
public class OrderController {

    @Resource
    private OrderService orderService;
    @Resource
    private OrderDetailsService orderDetailsService;
    @Resource
    private UserDetailsService userDetailsService;

    @Autowired
    private MailComponent component;

    //发送邮件
    @RequestMapping("/mail")
    public String mail(String email) {
        System.out.println("开始发送！");
        component.sendMail(email);
        System.out.println("发送成功！");
        return "success";
    }

    //进入发送页面
    @RequestMapping("/showUser")
    public ModelAndView showUser(ModelMap map) {
        map.addAttribute("title", "请输入收件人邮箱");
        return new ModelAndView("mail/index");
    }





    //酒店
    @RequestMapping("/hotelOrderDetailsDTO")
    public RoomDetailsDTO hotelOrderDetailsDTO(RoomDetailsDTO roomDetailsDTO, String amount, HttpSession session, UserDetailsDTO userDetailsDTO){

        String orderNo = this.getOrderNum();

        //拿到user数据
        UserDTO userDTO = (UserDTO)session.getAttribute("user");

        //实例化订单详情，数据持久化(数据保存到数据库)
        OrderDetailsDTO orderDetailsDTO = new OrderDetailsDTO();

        //生成订单详情唯一识别码切去掉横线
        String id = UUID.randomUUID().toString().replace("-", "");

        //添加订单详情
        orderDetailsDTO.setCommodityId(roomDetailsDTO.getHotelId());
        orderDetailsDTO.setUserDetails(userDetailsDTO.getUserDetailsId());
        orderDetailsDTO.setOrderId(orderNo);
        orderDetailsDTO.setId(id);

        //添加订单
        OrderDTO orderDTO = new OrderDTO();

        double amountHotel = Double.valueOf(amount);
        orderDTO.setOrderId(orderNo);
        orderDTO.setUserId(userDTO.getId());
        orderDTO.setStatus(1);
        orderDTO.setOrderTime(new Date());
        orderDTO.setPeople(1);
        orderDTO.setDetails(id);

        //持久化
        orderService.addOrder(orderDTO);
        orderDetailsService.addOrderDetails(orderDetailsDTO);
        userDetailsService.addUserDetails(userDetailsDTO);

        return roomDetailsDTO;
    }


    //机票
    @RequestMapping("/fightOrderDetailsDTO")
    public AirTicketsDTO fightOrderDetailsDTO(AirTicketsDTO airTicketsDTO,String amount,HttpSession session,UserDetailsDTO userDetailsDTO){

        String orderNo = this.getOrderNum();

        //拿到user数据
        UserDTO userDTO = (UserDTO)session.getAttribute("user");

        //实例化订单详情，数据持久化(数据保存到数据库)
        OrderDetailsDTO orderDetailsDTO = new OrderDetailsDTO();

        //生成订单详情唯一识别码切去掉横线
        String id = UUID.randomUUID().toString().replace("-", "");

        //添加订单详情
        orderDetailsDTO.setCommodityId(airTicketsDTO.getFightNum());
        orderDetailsDTO.setUserDetails(userDetailsDTO.getUserDetailsId());
        orderDetailsDTO.setOrderId(this.getOrderNum());
        orderDetailsDTO.setId(id);

        //添加订单
        OrderDTO orderDTO = new OrderDTO();

        double amountHotel = Double.valueOf(amount);
        orderDTO.setOrderId(orderNo);
        orderDTO.setUserId(userDTO.getId());
        orderDTO.setStatus(1);
        orderDTO.setOrderTime(new Date());
        orderDTO.setPeople(1);
        orderDTO.setDetails(id);

        //持久化
        orderService.addOrder(orderDTO);
        orderDetailsService.addOrderDetails(orderDetailsDTO);
        userDetailsService.addUserDetails(userDetailsDTO);


        return airTicketsDTO;
    }

    //生成订单号的方法
    public String getOrderNum(){
        Random random = new Random();
        Date date = new Date();
        String orderNo = random.nextInt(100)+""+date.getTime()+"";

        return orderNo;
    }





}
