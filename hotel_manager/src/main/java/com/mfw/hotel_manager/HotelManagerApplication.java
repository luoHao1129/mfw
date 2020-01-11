package com.mfw.hotel_manager;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan(basePackages = "com.mfw.hotel_manager.dao")
public class HotelManagerApplication {

    public static void main(String[] args) {
        SpringApplication.run(HotelManagerApplication.class, args);
    }

}
