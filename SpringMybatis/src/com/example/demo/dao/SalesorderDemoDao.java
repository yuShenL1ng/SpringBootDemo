package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.model.SalesorderDemo;

@Repository
@Mapper
public interface SalesorderDemoDao {

	int addSalesorderDemo(SalesorderDemo salesorderDemo);
	
	List<SalesorderDemoDao> getSalesorderDemoList(SalesorderDemo salesorderDemo);
	
	int updateSalesorderDemo(SalesorderDemo salesorderDemo);
	
	int deleteSalesorderDemo(SalesorderDemo salesorderDemo);
}
