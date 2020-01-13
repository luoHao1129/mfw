package com.mfw.hotel_manager.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HotelManagerController {

    @RequestMapping("/managerLogin")
    public ModelAndView managerLogin() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }


    public ModelAndView HotelManagerIndex(){
        ModelAndView modelAndView = new ModelAndView();

        return modelAndView;
    }


}
