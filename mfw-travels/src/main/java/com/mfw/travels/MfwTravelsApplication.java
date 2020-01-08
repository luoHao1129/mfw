package com.mfw.travels;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
//开启定时任务
@EnableScheduling
public class MfwTravelsApplication {

    public static void main(String[] args) {
        SpringApplication.run(MfwTravelsApplication.class, args);
    }

}
