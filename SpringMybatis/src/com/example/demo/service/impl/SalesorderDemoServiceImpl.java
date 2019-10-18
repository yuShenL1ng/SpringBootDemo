package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.aop.MysqlOperation;
import com.example.demo.dao.SalesorderDemoDao;
import com.example.demo.model.SalesorderDemo;
import com.example.demo.service.SalesorderDemoService;

@Service
public class SalesorderDemoServiceImpl implements SalesorderDemoService  {

	@Autowired
	private SalesorderDemoDao salesorderDemoDao;
	
	@MysqlOperation(value = "销售新增")
	@Override
	public int addSalesorderDemo(SalesorderDemo salesorderDemo) {
		// TODO Auto-generated method stub
		return salesorderDemoDao.addSalesorderDemo(salesorderDemo);
	}

	@MysqlOperation(value = "销售查看")
	@Override
	public List<SalesorderDemoDao> getSalesorderDemoList(SalesorderDemo salesorderDemo) {
		// TODO Auto-generated method stub
		System.out.print("getSalesorderDemoList service 执行");
		return salesorderDemoDao.getSalesorderDemoList(salesorderDemo);
	}

	@MysqlOperation(value = "销售修改")
	@Override
	public int updateSalesorderDemo(SalesorderDemo salesorderDemo) {
		// TODO Auto-generated method stub
		return salesorderDemoDao.updateSalesorderDemo(salesorderDemo);
	}

	@MysqlOperation(value = "销售上传")
	@Override
	public int deleteSalesorderDemo(SalesorderDemo salesorderDemo) {
		// TODO Auto-generated method stub
		return salesorderDemoDao.deleteSalesorderDemo(salesorderDemo);
	}

}
