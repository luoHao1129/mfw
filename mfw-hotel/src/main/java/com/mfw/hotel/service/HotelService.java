package com.mfw.hotel.service;

import com.mfw.api.dto.HotelDTO;

import java.util.List;

public interface HotelService {


    /**
     * 根据酒店ID显示酒店信息
     * @param id
     * @return
     */
    HotelDTO selectHotelById(String id);

    /**
     * 根据选择城市显示当前城市酒店列表
     * @param city
     * @param pageNo
     * @param size
     * @return
     */
    List<HotelDTO> selectHotelByCity(String city,int pageNo,int size);

    /**
     *  搜索酒店名
     * @param city
     * @param name
     * @return
     */
    List<HotelDTO> selectHotelByName(String city,String name);

    /**
     * 分页
     * @param city
     * @return
     */
    int selectPage(String city);

    /**
     * 根据酒店品牌显示
     * @param city
     * @param brand
     * @return
     */
    List<HotelDTO> selectHotelByBrand(String city,String brand);

    /**
     * 根据价格区间显示酒店信息
     * @param city
     * @return
     */
    List<HotelDTO> selectHotelByPrice(String city,Integer min,Integer max);
}
