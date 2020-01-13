package com.mfw.planeticket.controller;

import com.mfw.api.dto.AirTicketsDTO;
import com.mfw.api.dto.FightDTO;
import com.mfw.planeticket.DTO.DatePriceDTO;
import com.mfw.planeticket.DTO.DepartureDateDTO;
import com.mfw.planeticket.service.AirTicketsService;
import com.mfw.planeticket.service.FightService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import sun.security.pkcs11.Secmod;

import javax.annotation.Resource;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class AirTicketsController {
    @Resource
    private AirTicketsService airTicketsService;
    @Resource
    private FightService fightService;


    @RequestMapping("/fight")
    public ModelAndView selectAirTickets(DepartureDateDTO departureDateDTO){
        ModelAndView modelAndView = new ModelAndView();
        List<FightDTO> fightDTOS = fightService.selectPlaneticket(departureDateDTO.getDeparture(),departureDateDTO.getArrival());
        modelAndView.addObject("fightDTOS",fightDTOS);
        modelAndView.addObject("departureDateDTO",departureDateDTO);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");//注意月份是MM
        Date date = null;
        Date departureTime =  null;
        Date returnTime =  null;
        try {
          departureTime = simpleDateFormat.parse(departureDateDTO.getDepartureDate());
            returnTime = simpleDateFormat.parse(departureDateDTO.getReturnDate());

        } catch (ParseException e) {
            e.printStackTrace();
        }

        modelAndView.addObject("departureTime",departureTime);
        modelAndView.addObject("returnTime",returnTime);
        Map<String, Object> map = this.date(departureTime, fightDTOS.get(0).getPrice());
        modelAndView.addObject("map",map);
        List<FightDTO> fightDTO = (List<FightDTO>) fightService.selecttakeOffAirport(departureDateDTO.getDeparture());
        modelAndView.addObject("fightDTO",fightDTO);
        List<FightDTO> fightDTOS1=(List<FightDTO>) fightService.selectarrivalAtTheAirport(departureDateDTO.getArrival());
        modelAndView.addObject("fightDTOS1",fightDTOS1);
        List<FightDTO> fightDTOdepartureTime= fightService.selectdepartureTime(departureDateDTO.getDeparture());
        modelAndView.addObject("fightDTOdepartureTime",fightDTOdepartureTime);
        List<FightDTO> fightDTOaircraftType= fightService.selectaircraftType(departureDateDTO.getDeparture());
        modelAndView.addObject("fightDTOaircraftType",fightDTOaircraftType);
        List<FightDTO> fightDTOcompany= fightService.selectcompany(departureDateDTO.getDeparture());
        modelAndView.addObject("fightDTOcompany",fightDTOcompany);
        modelAndView.setViewName("jp");
        return modelAndView;
    }

//    public ModelAndView timeDifference(DepartureDateDTO departureDateDTO){
//        ModelAndView modelAndView1 = new ModelAndView();
//        List<FightDTO> fightDTOSs = fightService.selectPlaneticket(departureDateDTO.getDeparture(),departureDateDTO.getArrival());
//        modelAndView1.addObject("fightDTOSs",fightDTOSs);
//        modelAndView1.addObject("departureDateDTO",departureDateDTO);
//        DepartureDateDTO departureDateDTO1 = new DepartureDateDTO();
//        Date getLandingTime = departureDateDTO1.getLandingTime();
//        Date getDepartureTime= departureDateDTO1.getDepartureTime();
//        long getDeparture = getDepartureTime.getTime();
//        long getLanding = getLandingTime.getTime();
//        long timedifference = (getDeparture-getLanding)/(1000*3600);
//        return modelAndView1;
//
//
//    }
    @RequestMapping("/dingdan/{id}")
    public ModelAndView selectFight(@PathVariable("id") String fightNum){
        ModelAndView modelAndView = new ModelAndView();
        FightDTO FightDTOs = fightService.selectFightDTObyid(fightNum);
        modelAndView.addObject("fdto",FightDTOs);
        modelAndView.setViewName("dingdan");
        return  modelAndView;

    }

    public Map<String, Object>  date(Date date, int price){
        List<DatePriceDTO> prices=  new ArrayList<>();
        DatePriceDTO datePriceDTO =new DatePriceDTO();
        datePriceDTO.setDate(date);
        datePriceDTO.setPrice(price);
        prices.add(datePriceDTO);

        long time = date.getTime();
        long dayTime= 86400000;
        List<Date> dataList = new ArrayList<>();
        dataList.add(date);
        for (int i=1;i<7 ;i++){
            time= time+dayTime;
            Date date1=  new Date(time);

            price= (int) (price*0.95);

            prices.add(new DatePriceDTO(date1,price));
        }
        Map<String,Object> hasMap= new HashMap<>();

        hasMap.put("prices",prices);
        return hasMap;
    }
    @RequestMapping("/screeningFlights")
    public  List<FightDTO> FilterAllInformation(FightDTO fightDTO){
        List<FightDTO> screeningInformation = fightService.screeningInformation(fightDTO);
        return screeningInformation;
    }




}
