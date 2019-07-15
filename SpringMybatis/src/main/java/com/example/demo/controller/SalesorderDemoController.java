package com.example.demo.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.dao.SalesorderDemoDao;
import com.example.demo.model.ResponseInfo;
import com.example.demo.model.SalesorderDemo;
import com.example.demo.service.SalesorderDemoService;
import com.example.demo.util.Uploadfiles;

@Controller
@RequestMapping("/SalesorderDemo")
public class SalesorderDemoController {

	@Autowired
	private SalesorderDemoService SalesorderDemoService;
	
	@RequestMapping("/add.action")
	@ResponseBody
	public int addSalesorderDemo(HttpServletRequest request,@RequestBody SalesorderDemo salesorderDemo) {
		
		return SalesorderDemoService.addSalesorderDemo(salesorderDemo);
	}
	
	@RequestMapping("/getSalesorderDemoList.action")
	@ResponseBody
	public List<SalesorderDemoDao> getSalesorderDemoList(HttpServletRequest request,@RequestBody SalesorderDemo salesorderDemo) {
		
		return SalesorderDemoService.getSalesorderDemoList(salesorderDemo);
	}
	
	@RequestMapping("/update.action")
	@ResponseBody
	public int updateSalesorderDemo(HttpServletRequest request,@RequestBody SalesorderDemo salesorderDemo) {
		
		return SalesorderDemoService.updateSalesorderDemo(salesorderDemo);
	}
	
	@RequestMapping("/delete.action")
	@ResponseBody
	public int deleteSalesorderDemo(HttpServletRequest request,@RequestBody SalesorderDemo salesorderDemo) {
		
		return SalesorderDemoService.deleteSalesorderDemo(salesorderDemo);
	}
	
	@RequestMapping("/upload.action")
	@ResponseBody
	public ResponseInfo upload(@RequestParam("file") MultipartFile[] myfiles, HttpServletRequest request, HttpServletResponse response) {
		ResponseInfo info = new ResponseInfo();
		String id = request.getParameter("id");
		String name = request.getParameter("name");
/*		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss");//设置日期格式
		String date = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
*/		String realPath ="D:\\springBootUpload\\image\\"+name;
		info = Uploadfiles.uploadfiles(myfiles, realPath);
		return info;
	}
}
