package com.mfw.hotel.controller;


import com.mfw.api.dto.HotelDTO;
import com.mfw.api.dto.RoomDetailsDTO;
import com.mfw.api.dto.UserDTO;
import com.mfw.api.util.PageStatic;
import com.mfw.hotel.dto.HotelNum;
import com.mfw.hotel.service.HotelService;
import com.mfw.hotel.service.RoomService;
import freemarker.template.Configuration;


import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
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


    @RequestMapping("/hotel")
    public ModelAndView showHotel(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("hotel-main");
        return modelAndView;
    }

    /**
     * 根据酒店id返回所选酒店页面
     * @param id
     * @return
     */
    @RequestMapping("/hotelId/{id}")
    public ModelAndView hotelId(@PathVariable("id") String id){
        HotelDTO hotelDTO= hotelService.selectHotelById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("hdto",hotelDTO);
        modelAndView.addObject("hotelNum",hotelNum);
        modelAndView.setViewName("hotel-main-info");
        return modelAndView;
    }

    /**
     * 根据选择城市显示所选城市酒店
     * @param hotelNum
     * @return
     */
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
            modelAndView.addObject("size",hotelDTOS.size());
            mapdata.put("size",hotelDTOS.size());
            mapdata.put("hotelNum",hotelNum);
        mapdata.put("hdtols",hotelDTOS);
        modelAndView.setViewName("hotel-main-data");
        PageStatic.toHtmlFile(cfg,mapdata,"hotel-main-data","E:/webpath/");
        return modelAndView;
    }

    /**
     * 酒店订单页面
     * @param id
     * @return
     */
    @RequestMapping("/hotelOrder/{id}")
    public ModelAndView hotelOrder(@PathVariable("id")String id){
        RoomDetailsDTO roomDetailsDTO = roomService.selectRoomById(id);
        HotelDTO hotelDTO= hotelService.selectHotelById(roomDetailsDTO.getHotelId());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("price",roomDetailsDTO);
        modelAndView.addObject("hdto",hotelDTO);
        if(hotelNum.getPeopleNum().equals("人数")){
            hotelNum.setPeopleNum("1");
        }
        modelAndView.addObject("hotelNum",hotelNum);
        modelAndView.setViewName("hotel-order");
        return modelAndView;
    }

    /**
     * 分页
     * @param city
     * @param pageNo
     * @return
     */
    @RequestMapping("/selectLimit")
    public List<HotelDTO> selectLimit(String city,int pageNo){
        int size = 5;

        List<HotelDTO> hotelDTOList = hotelService.selectHotelByCity(city,pageNo,size);
        return hotelDTOList;
    }


    /**
     * 搜索酒店关键字
     * @param city
     * @param name
     * @return
     */
    @RequestMapping("/selectWord")
    public List<HotelDTO> searchHotelName(String city,String name){
        List<HotelDTO> hotelDTOS = hotelService.selectHotelByName(city,name);
        return hotelDTOS;
    }

    /**
     * 根据酒店品牌显示
     * @param city
     * @param brand
     * @return
     */
    @RequestMapping("/selectBrand")
    public List<HotelDTO> searchHotelBrand(String city, String brand){
        List<HotelDTO> hotelDTOList = hotelService.selectHotelByBrand(city, brand);
        return hotelDTOList;
    }

    /**
     * 根据价格区间显示酒店
     * @param city
     * @return
     */
    @RequestMapping("/selectPrice")
    public List<HotelDTO> searchHotelByRoomPrice(String city,Integer min,Integer max){
        List<HotelDTO> hotelDTOList = hotelService.selectHotelByPrice(city,min,max);
        return hotelDTOList;
    }

    /**
     * 静态页面异步获取session中的用户数据
     * @param session
     * @return
     */
    @RequestMapping("/getSession")
    @ResponseBody
    public Map<String, Object> test(HttpSession session){
        Map<String,Object> json = new HashMap<>();
        UserDTO user = (UserDTO) session.getAttribute("user");
        if(null != user){
            json.put("isSession",true);
            json.put("user",user);
        }else {
            json.put("isSession",false);
        }
        return json;
    }



}
