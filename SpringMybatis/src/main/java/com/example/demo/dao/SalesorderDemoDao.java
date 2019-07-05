package com.example.demo.dao;

import java.util.List;

import com.example.demo.model.SalesorderDemo;

public interface SalesorderDemoDao {

	int addSalesorderDemo(SalesorderDemo salesorderDemo);
	
	List<SalesorderDemoDao> getSalesorderDemoList(SalesorderDemo salesorderDemo);
	
	int updateSalesorderDemo(SalesorderDemo salesorderDemo);
	
	int deleteSalesorderDemo(SalesorderDemo salesorderDemo);
}
