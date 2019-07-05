package com.example.demo.service;

import java.util.List;

import com.example.demo.dao.SalesorderDemoDao;
import com.example.demo.model.SalesorderDemo;

public interface SalesorderDemoService {

	int addSalesorderDemo(SalesorderDemo salesorderDemo);
	
	List<SalesorderDemoDao> getSalesorderDemoList(SalesorderDemo salesorderDemo);
	
	int updateSalesorderDemo(SalesorderDemo salesorderDemo);
	
	int deleteSalesorderDemo(SalesorderDemo salesorderDemo);
}
