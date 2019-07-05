package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dao.ContractInfoDemoDao;
import com.example.demo.model.ContractInfoDemo;
import com.example.demo.service.ContractInfoDemoService;

@Controller
@RequestMapping("/ContractInfoDemo")
public class ContractInfoDemoController {

	@Autowired
	private ContractInfoDemoService contractInfoDemoService;
	
	@RequestMapping("/add.action")
	@ResponseBody
	public int addContractInfoDemo(HttpServletRequest request,@RequestBody ContractInfoDemo contractInfoDemo) {
		
		return contractInfoDemoService.addContractInfoDemo(contractInfoDemo);
	}
	
	@RequestMapping("/getContractInfoDemoList.action")
	@ResponseBody
	public List<ContractInfoDemoDao> getContractInfoDemoList(HttpServletRequest request,@RequestBody ContractInfoDemo contractInfoDemo) {
		
		return contractInfoDemoService.getContractInfoDemoList(contractInfoDemo);
	}
	
	@RequestMapping("/update.action")
	@ResponseBody
	public int updateContractInfoDemo(HttpServletRequest request,@RequestBody ContractInfoDemo contractInfoDemo) {
		
		return contractInfoDemoService.updateContractInfoDemo(contractInfoDemo);
	}
	
	@RequestMapping("/delete.action")
	@ResponseBody
	public int deleteContractInfoDemo(HttpServletRequest request,@RequestBody ContractInfoDemo contractInfoDemo) {
		
		return contractInfoDemoService.deleteContractInfoDemo(contractInfoDemo);
	}
}
