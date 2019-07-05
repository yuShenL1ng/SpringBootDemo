package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dao.SalesorderDemoDao;
import com.example.demo.model.SalesorderDemo;
import com.example.demo.service.SalesorderDemoService;

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
}
