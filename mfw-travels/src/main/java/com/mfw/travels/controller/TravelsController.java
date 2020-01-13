package com.mfw.travels.controller;


import com.mfw.api.dto.Content;
import com.mfw.api.dto.Travels;
import com.mfw.api.dto.UserDTO;
import com.mfw.api.util.PageStatic;
import com.mfw.travels.service.ContentService;
import com.mfw.travels.service.impl.TravelsServiceImpl;
import freemarker.template.Configuration;
import org.apache.commons.io.FileUtils;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.*;
@Controller
public class TravelsController {

	@Resource
	private Configuration cfg;

	@Resource
	private TravelsServiceImpl travelsServiceImpl;
	@Resource
	private ContentService contentService;

	private boolean flag = true;


	/**
	 * 写游记页面跳转
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/toAddTravels")
	public String addTravels(HttpSession session) {

		UserDTO userDTO = (UserDTO) session.getAttribute("user");
		if(userDTO == null){
			return "redirect:http://localhost:8081/login.html";
		}else {
			return "redirect:/addTravels.html";
		}
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

	/**
	 * 游记标题修改
	 * @param travels
	 * @return
	 */
	@RequestMapping(value = "/updateTravelsTitle")
	@ResponseBody
	public Map<String,Object> updateTravelsTitle(Travels travels,HttpSession session) {
		Map<String,Object> msg = new HashMap<>();
		String id = UUID.randomUUID().toString().replace("-", "");
		UserDTO userDTO = (UserDTO)session.getAttribute("user");
//		判断当前是否已经新建了游记，若没有则新建游记
		if (!travels.getId().equals("")) {
			Travels travels1 = travelsServiceImpl.findTravelsById(travels.getId());
			travels1.setTitle(travels.getTitle());
			travelsServiceImpl.updateTeavels(travels1);
			msg.put("tId",travels.getId());
			msg.put("msg","success");
		}else {
			travels.setId(id).setAuthorId(userDTO.getId());
			travelsServiceImpl.addTravels(travels);
			msg.put("tId",id);
		}

		return msg;
     }


	/**
	 * 游记头部图片上传
	 * @param file 用户上传的图片
	 * @param session
	 * @param travelsId 游记ID
	 * @return 返回图片上传状态 200：上传成功，500：上传出错，404：上传图片为空
	 *
	 */
	@RequestMapping("/uploadTitleImg")
	@ResponseBody
     public Map<String,Object> uploadTitleImg(MultipartFile file,String travelsId,HttpSession session){
		Map<String,Object> map = new HashMap<>();
		 Map<String, String> msg = this.uploadImg(file);
		 String id = UUID.randomUUID().toString().replace("-", "");
		 UserDTO userDTO = (UserDTO)session.getAttribute("user");
//		 判断图片上传是否成功
		 if(msg.get("msg").equals("200")) {
			 //		判断当前是否已经新建了游记，若没有则新建游记
			 if (travelsId.equals("") || travelsId != null) {
				 Travels travels = new Travels();
				 travels.setId(id)
						 .setAuthorId(userDTO.getId())
						 .setTpic(msg.get("imgPath"));
				 travelsServiceImpl.addTravels(travels);
				 map.put("tId",id);
			 } else {
				 Travels travels = travelsServiceImpl.findTravelsById(travelsId);
				 travels.setTpic(msg.get("imgPath"));
				 travelsServiceImpl.updateTeavels(travels);
				 map.put("tId",travels.getId());
			 }
			 map.put("imgPath",msg.get("imgPath"));
		 }

		 map.put("msg",msg.get("msg"));
		return map;
	 }


	/**
	 * 内容图片上传
	 * @param file
	 * @param travelsId
	 * @param sequence
	 * @param cId
	 * @param session
	 * @return 返回图片上传状态 200：上传成功，500：上传出错，404：上传图片为空 以及相关信息
	 */
     @RequestMapping("/uploadContentImg")
	 @ResponseBody
     public Map upload(MultipartFile file,String travelsId,int sequence,String cId,HttpSession session,String text){
		 UserDTO userDTO = (UserDTO)session.getAttribute("user");
		 String contentId = UUID.randomUUID().toString().replace("-", "");
		 String tId = UUID.randomUUID().toString().replace("-", "");
		 Map<String, String> msg = this.uploadImg(file);
//		 判断图片上传是否成功
		 if(msg.get("msg").equals("200")){
			 msg.put("tId",travelsId);
			 //		判断当前是否已经新建了游记，若没有则新建游记
		 	if(travelsId == null || travelsId.equals("")){
		 		Travels travels = new Travels();
		 		travels.setId(tId)
						.setAuthorId(userDTO.getId());
		 		travelsServiceImpl.addTravels(travels);
		 		travelsId = tId;
				msg.put("tId",travelsId);
			}
//		 	判断内容是否为新的一段，若是就创建新的对象，若不是则更新原有段落
		 	if(cId == null || cId.equals("")){
		 		Content content = new Content();
		 		content.setId(contentId)
						.setTravelsId(travelsId)
						.setText(text)
						.setPic(msg.get("imgPath"))
						.setSequence(sequence);

		 		contentService.addContent(content);
		 		cId = contentId;
		 		msg.put("cText",text);
			}else {
				Content content = new Content();
				content.setSequence(sequence)
						.setId(cId);
				Content contentByIdAndSequence = contentService.findContentByIdAndSequence(content);
				contentByIdAndSequence.setPic(msg.get("imgPath"));
				contentService.updateContent(contentByIdAndSequence);
				msg.put("cText",contentByIdAndSequence.getText());
			}
		 }
		 msg.put("contentId",cId);
		 msg.put("sequence",sequence+"");

		 return msg;
	 }


	/**
	 * 游记正文上传储存
	 * @param text
	 * @param contentID
	 * @param travelsId
	 * @param sequence
	 * @return
	 */
	 @RequestMapping("/saveContentText")
	 @ResponseBody
	 public Map<String,Object> saveContentText(String text,String contentID,String travelsId,int sequence){
		 Map<String,Object> msg = new HashMap<>();
		 //		判断当前是否已经新建了游记，若没有则直接返回网页
		 if(travelsId == null || !travelsId.equals("")) {

			 if (contentID == null || contentID.equals("")) {
				 String contentId = UUID.randomUUID().toString().replace("-", "");
				 Content content = new Content();
				 content.setId(contentId)
						 .setTravelsId(travelsId)
						 .setSequence(sequence)
						 .setText(text);
				 contentID = contentId;
				 contentService.addContent(content);

			 } else {
				 Content content = new Content();
				 content.setSequence(sequence);
				 content.setId(contentID);
				 content = contentService.findContentByIdAndSequence(content);
				 content.setText(text);
				 contentService.updateContent(content);


			 }
		 }
		 msg.put("contentID",contentID);
		 return msg;
	 }


	/**
	 * 游记发表，点击发表后进入待审核状态，等待后台审核通过后才会在前台首页显示
	 * @param tId
	 * @return
	 */
	 @RequestMapping("/toPublish/{id}")
	 public String toPublish(@PathVariable("id")String tId){
		 Travels travelsById = travelsServiceImpl.findTravelsById(tId);
		 travelsById.setTravelstype("3");
		 travelsServiceImpl.updateTeavels(travelsById);
		 return "redirect:http://localhost:8081/toPersonal";
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
		if ((pagelength%pageSize) != 0){
			page = page+1;
		}
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

	/**
	 * 图片上传
	 * @param file
	 * @return 返回信息map key=msg（获取上传状态），key=imgPath（获取图片相对路径）
	 */
	 public Map<String,String> uploadImg(MultipartFile file){
		Map<String,String> map = new HashMap<>();

		 if (!file.isEmpty()) {
			 String type = file.getOriginalFilename().substring(
					 file.getOriginalFilename().indexOf("."));// 取文件格式后缀名
			 String filename = UUID.randomUUID().toString().replace("-", "") + type;// 取当前时间戳作为文件名
			 String path = "E:\\webpath\\uploadImg\\" + filename;
			 File destFile = new File(path);
			 try {
				 // FileUtils.copyInputStreamToFile()这个方法里对IO进行了自动操作，不需要额外的再去关闭IO流
				 FileUtils.copyInputStreamToFile(file.getInputStream(), destFile);// 复制临时文件到指定目录下
				 String imgPath = path.substring(path.indexOf("uploadImg"));
				 map.put("imgPath",imgPath);

			 } catch (IOException e) {
				 e.printStackTrace();
				 map.put("msg","500");
			 }

			 map.put("msg","200");
		 }else {
			 map.put("msg","404");
		 }
		 return map;
	 }

}
