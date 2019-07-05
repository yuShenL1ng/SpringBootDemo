package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.ContractInfoDemoDao;
import com.example.demo.model.ContractInfoDemo;
import com.example.demo.service.ContractInfoDemoService;

@Service
public class ContractInfoDemoServiceImpl implements ContractInfoDemoService {
	
	@Autowired
	private ContractInfoDemoDao contractInfoDemoDao;

	@Override
	public int addContractInfoDemo(ContractInfoDemo contractInfoDemo) {
		// TODO Auto-generated method stub
		return contractInfoDemoDao.addContractInfoDemo(contractInfoDemo);
	}

	@Override
	public List<ContractInfoDemoDao> getContractInfoDemoList(ContractInfoDemo contractInfoDemo) {
		// TODO Auto-generated method stub
		return contractInfoDemoDao.getContractInfoDemoList(contractInfoDemo);
	}

	@Override
	public int updateContractInfoDemo(ContractInfoDemo contractInfoDemo) {
		// TODO Auto-generated method stub
		return contractInfoDemoDao.updateContractInfoDemo(contractInfoDemo);
	}

	@Override
	public int deleteContractInfoDemo(ContractInfoDemo contractInfoDemo) {
		// TODO Auto-generated method stub
		return contractInfoDemoDao.deleteContractInfoDemo(contractInfoDemo);
	}



}
