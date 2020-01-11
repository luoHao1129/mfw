package com.mfw.hotel.service.impl;

import com.mfw.api.dto.HotelDTO;
import com.mfw.hotel.dao.HotelDAO;
import com.mfw.hotel.service.HotelService;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class HotelServiceImpl implements HotelService {
    @Resource
    private HotelDAO hotelDAO;


    @Override
    public HotelDTO selectHotelById(String id) {

        return hotelDAO.selectHotelById(id);
    }

    @Override
    @Cacheable(key ="'hotel'+#pageNo")
    public List<HotelDTO> selectHotelByCity(String city, int pageNo, int size) {
        //		防止页码为0的时候产生异常
        if(pageNo == 0 ) {
            pageNo=1;
        }
        size = 5;
//		计算起始行数
        pageNo = (pageNo-1)*size;

        return hotelDAO.selectHotelByCity(city,pageNo,size);
    }


    @Override
    public List<HotelDTO> selectHotelByName(String city,String name) {
        return hotelDAO.selectHotelByName(city,name);
    }

    @Override
    public int selectPage(String city) {
        return hotelDAO.selectPage(city);
    }

    @Override
    public List<HotelDTO> selectHotelByBrand(String city, String brand) {
        return hotelDAO.selectHotelByBrand(city,brand);
    }

    @Override
    public List<HotelDTO> selectHotelByPrice(String city, Integer min,Integer max) {
        return hotelDAO.selectHotelByPrice(city,min,max);
    }


}
