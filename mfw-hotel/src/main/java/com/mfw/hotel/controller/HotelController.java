package com.mfw.hotel.controller;


import com.mfw.api.dto.HotelDTO;
import com.mfw.api.dto.RoomDetailsDTO;
import com.mfw.api.util.PageStatic;
import com.mfw.hotel.dto.HotelNum;
import com.mfw.hotel.service.HotelService;
import com.mfw.hotel.service.RoomService;
import freemarker.template.Configuration;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class HotelController {
    @Resource
    HotelService hotelService;
    @Resource
    RoomService roomService;
    @Resource
    private Configuration cfg;

    private HotelNum hotelNum;



    @RequestMapping("/hotelId/{id}")
    public ModelAndView hotelId(@PathVariable("id") String id){
        HotelDTO hotelDTO= hotelService.selectHotelById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("hdto",hotelDTO);
        modelAndView.addObject("hotelNum",hotelNum);
        modelAndView.setViewName("hotel-info");
        return modelAndView;
    }

    @RequestMapping("/selectHotelCity")
    public ModelAndView hotelCity(HotelNum hotelNum){
        Map<String,Object> mapdata= new HashMap<>();
        ModelAndView modelAndView = new ModelAndView();
        this.hotelNum=hotelNum;
        int pagelength = hotelService.selectPage(hotelNum.getCity());
        int page = pagelength/5;
        List<Integer> pages = new ArrayList<>();
        for(int i = 1; i <= page; i++){
            pages.add(i);
        }
        mapdata.put("pagelength",pagelength);
//		返回页码数组
        mapdata.put("pages",pages);
//		返回页码总数
        mapdata.put("page",page);

        List<HotelDTO> hotelDTOS = hotelService.selectHotelByCity(hotelNum.getCity(),1,5);
        modelAndView.addObject("hdtols",hotelDTOS);
        modelAndView.addObject("hotelNum",hotelNum);
        modelAndView.addObject("page",page);
        modelAndView.addObject("pages",pages);
        modelAndView.addObject("pagelength",pagelength);

        mapdata.put("hotelNum",hotelNum);
        mapdata.put("hdtols",hotelDTOS);
        modelAndView.setViewName("hotel-data");
        PageStatic.toHtmlFile(cfg,mapdata,"hotel-data","E:/webpath/");
        return modelAndView;
    }

    @RequestMapping("/hotelOrder/{id}")
    public ModelAndView hotelOrder(@PathVariable("id")String id){
        RoomDetailsDTO roomDetailsDTO = roomService.selectRoomById(id);
        HotelDTO hotelDTO= hotelService.selectHotelById(roomDetailsDTO.getHotelId());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("price",roomDetailsDTO);
        modelAndView.addObject("hdto",hotelDTO);
        modelAndView.addObject("hotelNum",hotelNum);
        modelAndView.setViewName("hotel-order");
        return modelAndView;
    }

    @RequestMapping("/selectLimit")
    public List<HotelDTO> selectLimit(String city,int pageNo){
        int size = 5;

        List<HotelDTO> hotelDTOList = hotelService.selectHotelByCity(city,pageNo,size);
        return hotelDTOList;
    }



    @RequestMapping("/selectWord")
    public List<HotelDTO> searchHotelName(String city,String name){
        List<HotelDTO> hotelDTOS = hotelService.selectHotelByName(city,name);
        return hotelDTOS;
    }

}
