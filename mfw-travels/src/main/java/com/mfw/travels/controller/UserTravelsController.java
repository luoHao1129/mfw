package com.mfw.travels.controller;

import com.mfw.api.dto.Travels;
import com.mfw.api.dto.UserDTO;
import com.mfw.travels.service.TravelsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserTravelsController {
    @Resource
    private TravelsService travelsService;


    @RequestMapping("/toUserTravels")
    public ModelAndView toUserTravels(HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
        UserDTO userDTO = (UserDTO)session.getAttribute("user");
        List<Travels> travels = travelsService.selectAllByAuthorId(userDTO.getId());
        int publish = 0,audit = 0,draft = 0;
        List<Travels> drafts = new ArrayList<>();
        for (Travels travel : travels){
            switch (travel.getTravelstype()){
                case "1":
                        publish++;
                    break;
                case "2":
                    draft++;
                    drafts.add(travel);
                    break;
                case "3":
                    audit++;
                    break;
            }
        }
        modelAndView.addObject("publish",publish);
        modelAndView.addObject("audit",audit);
        modelAndView.addObject("draft",draft);
        modelAndView.addObject("drafts",drafts);
        modelAndView.setViewName("travelsContent");
        return modelAndView;
    }


    @RequestMapping("/editTravels/{id}")
    public ModelAndView editTravels(@PathVariable("id") String id){
        ModelAndView modelAndView = new ModelAndView();
        Travels travels = travelsService.selectTravelsById(id);
        modelAndView.addObject("travels",travels);
        modelAndView.setViewName("addTravels");
        return modelAndView;
    }

}
