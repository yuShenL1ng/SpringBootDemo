package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.aop.MysqlOperation;
import com.example.demo.dao.ContractInfoDemoDao;
import com.example.demo.model.ContractInfoDemo;
import com.example.demo.service.ContractInfoDemoService;

@Service
public class ContractInfoDemoServiceImpl implements ContractInfoDemoService {
	
	@Autowired
	private ContractInfoDemoDao contractInfoDemoDao;

	@MysqlOperation(value = "添加合同")
	@Override
	public int addContractInfoDemo(ContractInfoDemo contractInfoDemo) {
		// TODO Auto-generated method stub
		return contractInfoDemoDao.addContractInfoDemo(contractInfoDemo);
	}

	@MysqlOperation(value = "查看合同")
	@Override
	public List<ContractInfoDemoDao> getContractInfoDemoList(ContractInfoDemo contractInfoDemo) {
		// TODO Auto-generated method stub
		return contractInfoDemoDao.getContractInfoDemoList(contractInfoDemo);
	}

	@MysqlOperation(value = "修改合同")
	@Override
	public int updateContractInfoDemo(ContractInfoDemo contractInfoDemo) {
		// TODO Auto-generated method stub
		return contractInfoDemoDao.updateContractInfoDemo(contractInfoDemo);
	}

	@MysqlOperation(value = "删除合同")
	@Override
	public int deleteContractInfoDemo(ContractInfoDemo contractInfoDemo) {
		// TODO Auto-generated method stub
		return contractInfoDemoDao.deleteContractInfoDemo(contractInfoDemo);
	}



}
