package com.mfw.travels.controller;

import java.io.File;
import java.io.IOException;
import java.util.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import com.mfw.api.dto.Travels;
import com.mfw.api.dto.UserDTO;
import com.mfw.api.util.PageStatic;
import com.mfw.travels.service.impl.TravelsServiceImpl;


import freemarker.template.Configuration;
import org.apache.commons.io.FileUtils;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
@Controller
public class TravelsController {

	@Resource
	private Configuration cfg;

	@Resource
	private TravelsServiceImpl travelsServiceImpl;

	private boolean flag = true;


	@RequestMapping(value = "/addTravels.do")
	public ModelAndView addTravels(Travels travels) {
		ModelAndView modelAndView = new ModelAndView();
//		添加游记
		travelsServiceImpl.addTravels(travels);
//		添加成功后跳转首页
		modelAndView.addObject("travels",travelsServiceImpl.selectLimit(1, 9));
		modelAndView.setViewName("index");
		
		
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/selectByAuthorId")
	public ModelAndView selectAllByAuthorId(String authorId,HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
//		用户查询自己的游记
		List<Travels> travels = travelsServiceImpl.selectAllByAuthorId(authorId);
//		modelAndView.addObject("travelsai", travels);
		request.getSession().setAttribute("travelsai", travels);
		modelAndView.setViewName("main");
		return modelAndView;
	}

	/**
	 * 静态页面跳转，根据当前页面状态决定是跳转到副本还是原文件
	 * @return
	 */
	@RequestMapping(value = "/main")
	public String toMainHtml() {
		if(flag){
			return "redirect:main.html";
		}else {
			return "redirect:mainRefresh.html";
		}
	}

	/**
	 * 分页查询，根据用户点击页数，返回相应页码的数据
	 * @param pageNo
	 * @return
	 */
	@RequestMapping("/limitPage/{page}")
    @ResponseBody
    public List<Travels> selectLimit(@PathVariable("page")int pageNo) {
	    int pageSize = 9;
//		分页查询
		List<Travels> travels = travelsServiceImpl.selectLimit(pageNo, pageSize);

		return travels;
    }

	/**
	 * 用户点击某个游记item后，获取该游记数据，并跳转到详情页
	 * @param id
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/toTravels/{id}")
	public ModelAndView selectTravelsById(@PathVariable("id") String id, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
//		单个游记展示
		Travels travels = travelsServiceImpl.selectTravelsById(id);
		modelAndView.addObject("travels", travels);
		modelAndView.setViewName("travel");
		return modelAndView;
	}
	
	@RequestMapping(value = "/addTravels")
	public ModelAndView queryFileData(@RequestParam("file")MultipartFile file,HttpServletRequest request,HttpServletResponse response, @RequestParam("title")String title) throws IOException {
	    	 ModelAndView modelAndView = new ModelAndView();
        	 System.out.println(title);
		// MultipartFile是对当前上传的文件的封装
	         if (!file.isEmpty()) {
	        	 System.out.println(title);
	             String type = file.getOriginalFilename().substring(
	                     file.getOriginalFilename().indexOf("."));// 取文件格式后缀名
	             String filename = UUID.randomUUID().toString().replace("-", "") + type;// 取当前时间戳作为文件名
	             String pathS = "D:/eclipse-workspace/mfw/WebContent/imgs/"+filename;
	             String path = request.getSession().getServletContext()
	                     .getRealPath("/imgs/" + filename);// 存放位置
	             File destFile = new File(pathS);
	             Travels travels = new Travels();
	             UserDTO userDTO = (UserDTO)request.getSession().getAttribute("user");
//	             对游记详情进行封装
	             String patht = pathS.substring(pathS.indexOf("imgs"));
	             travels.setId(UUID.randomUUID().toString().replace("-", ""));
	             travels.setTitle(title);
	             travels.setTpic(patht);
	             travels.setAuthorId("ccc");
	             travels.setDestination("��");
	             travels.setPageviews(0);
	             travels.setLikeNum(0);
	             travelsServiceImpl.addTravels(travels);
	             try {
					 // FileUtils.copyInputStreamToFile()这个方法里对IO进行了自动操作，不需要额外的再去关闭IO流
	                 FileUtils.copyInputStreamToFile(file.getInputStream(), destFile);// 复制临时文件到指定目录下
	             } catch (IOException e) {
	                 e.printStackTrace();
	             }
	             request.getSession().setAttribute("addt", travels);
	             String jsonString = JSON.toJSONString(travels);
	             response.getWriter().print(jsonString);
	            return modelAndView;
         }
			return modelAndView; 
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


	/**
	 * 定时任务，从5分钟后开始，每过5分钟刷新一次静态页面
	 */
	@Scheduled(cron = "0 5/5 * * * ? ")
	 public void refreshPage(){
		 int pageNo = 1;
		 int pageSize = 9;
		 List<Travels> travels = travelsServiceImpl.selectLimit(pageNo, pageSize);
		int pagelength = travelsServiceImpl.selectCount();
		int page = pagelength/pageSize;
		Map<String,Object> data = new HashMap<>();
		List<Integer> pages = new ArrayList<>();
		for(int i = 1; i <= page; i++){
			pages.add(i);
		}
//		返回游记条数
		data.put("pagelength",pagelength);
//		返回页码数组
		data.put("pages",pages);
//		返回页码总数
		data.put("page",page);
//		返回游记数据
		data.put("travelsai" , travels);
		 if(!flag) {
			 PageStatic.toHtmlFile(cfg, data, "main","e:/webpath/");
			 flag = true;
		 }else {
			 PageStatic.toRefreshHtmlFile(cfg, data, "main","e:/webpath/");
			 flag = false;
		 }
	 }


}
