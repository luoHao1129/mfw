package com.mfw.travels.init;

import com.mfw.api.dto.Travels;
import com.mfw.api.util.PageStatic;
import com.mfw.travels.service.impl.TravelsServiceImpl;
import freemarker.template.Configuration;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class InitPage implements ApplicationRunner {

    @Resource
    private Configuration cfg;
    @Resource
    private TravelsServiceImpl travelsServiceImpl;
    @Override
    public void run(ApplicationArguments args) throws Exception {

        int pageNo = 1;
        int pageSize = 9;
//		if(pageNo == null&& pageSize == null) {
//			pageNo = 1;
//			pageSize = 5;
//		}
//		分页查询
        List<Travels> travels = travelsServiceImpl.selectLimit(pageNo, pageSize);
        int pagelength = travelsServiceImpl.selectCount();
        int page = pagelength/pageSize;
        Map<String,Object> data = new HashMap<>();
        List<Integer> pages = new ArrayList<>();
        for(int i = 1; i <= page; i++){
            pages.add(i);
        }
        data.put("pagelength",pagelength);
        data.put("pages",pages);
        data.put("page",page);
        data.put("travelsai" , travels);
        PageStatic.toHtmlFile(cfg,data,"main","e:/webpath/");
    }
}
