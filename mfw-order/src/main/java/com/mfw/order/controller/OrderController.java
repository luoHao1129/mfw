package com.mfw.order.controller;


import com.mfw.api.dto.*;
import com.mfw.order.OrderDetailesPageDTO;
import com.mfw.order.mail.MailComponent;
import com.mfw.order.service.OrderDetailsService;
import com.mfw.order.service.OrderService;
import com.mfw.order.service.UserDetailsService;
import com.mfw.order.util.OrderUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;


@Controller
public class OrderController {

    @Resource
    private OrderService orderService;
    @Resource
    private OrderDetailsService orderDetailsService;
    @Resource
    private UserDetailsService userDetailsService;
    @Autowired
    private MailComponent component;

    //生成订单号的方法
    public String getOrderNum(){
        Random random = new Random();
        Date date = new Date();
        String orderNo = random.nextInt(100)+""+date.getTime()+"";

        return orderNo;
    }

    //发送邮件
    @RequestMapping("/mail")
    public String mail(String email) {
        System.out.println("开始发送！");
        System.out.println("发送成功！");
        return "success";
    }

    //进入发送页面
    @RequestMapping("/showUser")
    public ModelAndView showUser(ModelMap map) {
        map.addAttribute("title", "请输入收件人邮箱");
        return new ModelAndView("mail/index");
    }


    //从酒店机票拿到需要的订单详情
    @Autowired
    private RestTemplate restTemplate;
    @Value("${OrderService.hotelOrderServiceURLGet}")
    private String hotelOrderServiceURLGet;

    private OrderUtil orderUtil = new OrderUtil();

    @RequestMapping("/getOrderDetails")
    public ModelAndView getOrderDetails(HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
        UserDTO userDTO = (UserDTO)session.getAttribute("user");
        List<OrderDTO> ordersDTO = orderService.getOrderDetailsById(userDTO.getId());
        List<OrderDetailesPageDTO> orderDetailesPageDTOs = new ArrayList<>();
        for(OrderDTO orderDTO:ordersDTO){
            switch (orderDTO.getTypeId()){
                case 1:
                    OrderDetailesPageDTO orderDetailesPageDTO = orderUtil.getOrderDetailes(orderDTO,restTemplate,hotelOrderServiceURLGet,orderDetailsService);
                    orderDetailesPageDTOs.add(orderDetailesPageDTO);

            }
        }
        modelAndView.addObject("orders",orderDetailesPageDTOs);
        modelAndView.addObject("user",userDTO);
        modelAndView.setViewName("order");
        return modelAndView;
    }


    /**
     * 酒店
     * @param mail
     * @param peopleHotel
     * @param hotelName
     * @param commodityId
     * @param checkInTime
     * @param checkOutTime
     * @param name
     * @param tel
     * @param amount
     * @param session
     * @return
     * @throws ParseException
     */

    @RequestMapping("/hotelOrder")
    public String hotelOrderDetailsDTO(String mail,String peopleHotel,String hotelName,String commodityId,String checkInTime,String checkOutTime,String name,String tel,String amount,HttpSession session) throws ParseException {

        String orderNo = this.getOrderNum();
        String userDetailsId = UUID.randomUUID().toString().replace("-", "");
        UserDetailsDTO userDetailsDTO = new UserDetailsDTO();
        userDetailsDTO.setUserDetailsId(userDetailsId).setName(name);

        //拿到user数据
        UserDTO userDTO = (UserDTO)session.getAttribute("user");

        //实例化订单详情，数据持久化(数据保存到数据库)
        OrderDetailsDTO orderDetailsDTO = new OrderDetailsDTO();

        //生成订单详情唯一识别码切去掉横线
        String id = UUID.randomUUID().toString().replace("-", "");

        //时间格式
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");//注意月份是MM
        Date dateHotelCheckIn = simpleDateFormat.parse(checkInTime);
        Date dateHotelCheckOut = simpleDateFormat.parse(checkOutTime);

        //添加订单详情
        orderDetailsDTO.setCommodityId(commodityId);
        orderDetailsDTO.setUserDetails(userDetailsId);
        orderDetailsDTO.setOrderId(orderNo);
        orderDetailsDTO.setId(id);
        orderDetailsDTO.setCheckInTime(dateHotelCheckIn);
        orderDetailsDTO.setCheckOutTime(dateHotelCheckOut);


        //添加订单
        OrderDTO orderDTO = new OrderDTO();

        double amountHotel = Double.valueOf(amount);

        orderDTO.setOrderId(orderNo);
        orderDTO.setUserId(userDTO.getId());
        orderDTO.setStatus(2);
        orderDTO.setOrderTime(new Date());
        String renshu666 = peopleHotel.trim();
        int people = Integer.valueOf(renshu666);

        orderDTO.setPeople(people);
        orderDTO.setDetails(id);
        orderDTO.setAmount(amountHotel);
        orderDTO.setTypeId(1);

        //持久化
        orderService.addOrder(orderDTO);
        orderDetailsService.addOrderDetails(orderDetailsDTO);
        userDetailsService.addUserDetails(userDetailsDTO);

        //邮件通知
        Map<String,Object> map = new HashMap<>();
        map.put("name",name);
        map.put("hotelName",hotelName);
        map.put("orderId",orderNo);
        component.sendMail(mail,map);
        return "redirect:/getOrderDetails";
    }


    /**
     * 机票
     * @param mail
     * @param peopleFight
     * @param fightName
     * @param commodityId
     * @param departureTime
     * @param landingTime
     * @param name
     * @param tel
     * @param amount
     * @param session
     * @return
     */
    @RequestMapping("/fightOrderDetailsDTO")
    public String fightOrderDetailsDTO(String mail, String peopleFight, String fightName, String commodityId, String departureTime, String landingTime, String name, String tel, String amount, HttpSession session) throws ParseException {

        String orderNo = this.getOrderNum();
        String userDetailsId = UUID.randomUUID().toString().replace("-", "");
        UserDetailsDTO userDetailsDTO = new UserDetailsDTO();
        userDetailsDTO.setUserDetailsId(userDetailsId).setName(name);


        //拿到user数据
        UserDTO userDTO = (UserDTO)session.getAttribute("user");

        //实例化订单详情，数据持久化(数据保存到数据库)
        OrderDetailsDTO orderDetailsDTO = new OrderDetailsDTO();

        //生成订单详情唯一识别码切去掉横线
        String id = UUID.randomUUID().toString().replace("-", "");

        //时间格式
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");//注意月份是MM
        Date dateFightDepartureTime = simpleDateFormat.parse(departureTime);
        Date dateFightLandingTime = simpleDateFormat.parse(landingTime);

        //添加订单详情
        orderDetailsDTO.setCommodityId(commodityId);
        orderDetailsDTO.setUserDetails(userDetailsId);
        orderDetailsDTO.setOrderId(orderNo);
        orderDetailsDTO.setId(id);
        orderDetailsDTO.setDepartureTime(dateFightDepartureTime);
        orderDetailsDTO.setLandingTime(dateFightLandingTime);

        //添加订单
        OrderDTO orderDTO = new OrderDTO();

        double amountFight = Double.valueOf(amount);

        orderDTO.setOrderId(orderNo);
        orderDTO.setUserId(userDTO.getId());
        orderDTO.setStatus(2);
        orderDTO.setOrderTime(new Date());
        String renshu666 = peopleFight.trim();
        int people = Integer.valueOf(renshu666);

        orderDTO.setPeople(people);
        orderDTO.setDetails(id);
        orderDTO.setAmount(amountFight);
        orderDTO.setTypeId(1);


        //持久化
        orderService.addOrder(orderDTO);
        orderDetailsService.addOrderDetails(orderDetailsDTO);
        userDetailsService.addUserDetails(userDetailsDTO);

        //邮件通知
        Map<String,Object> map = new HashMap<>();
        map.put("name",name);
        map.put("fightName",fightName);
        map.put("orderId",orderNo);
        component.sendMail(mail,map);
        return "redirect:/getOrderDetails";
    }

}
