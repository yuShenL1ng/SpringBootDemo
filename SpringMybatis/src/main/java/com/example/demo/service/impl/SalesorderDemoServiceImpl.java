package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.SalesorderDemoDao;
import com.example.demo.model.SalesorderDemo;
import com.example.demo.service.SalesorderDemoService;

@Service
public class SalesorderDemoServiceImpl implements SalesorderDemoService  {

	@Autowired
	private SalesorderDemoDao salesorderDemoDao;
	
	@Override
	public int addSalesorderDemo(SalesorderDemo salesorderDemo) {
		// TODO Auto-generated method stub
		return salesorderDemoDao.addSalesorderDemo(salesorderDemo);
	}

	@Override
	public List<SalesorderDemoDao> getSalesorderDemoList(SalesorderDemo salesorderDemo) {
		// TODO Auto-generated method stub
		return salesorderDemoDao.getSalesorderDemoList(salesorderDemo);
	}

	@Override
	public int updateSalesorderDemo(SalesorderDemo salesorderDemo) {
		// TODO Auto-generated method stub
		return salesorderDemoDao.updateSalesorderDemo(salesorderDemo);
	}

	@Override
	public int deleteSalesorderDemo(SalesorderDemo salesorderDemo) {
		// TODO Auto-generated method stub
		return salesorderDemoDao.deleteSalesorderDemo(salesorderDemo);
	}

}
