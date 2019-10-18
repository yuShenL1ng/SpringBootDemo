package com.example.demo.service;

import java.util.List;

import com.example.demo.dao.ContractInfoDemoDao;
import com.example.demo.model.ContractInfoDemo;

public interface ContractInfoDemoService {

	int addContractInfoDemo(ContractInfoDemo contractInfoDemo);
	
	List<ContractInfoDemoDao> getContractInfoDemoList(ContractInfoDemo contractInfoDemo);
	
	int updateContractInfoDemo(ContractInfoDemo contractInfoDemo);
	
	int deleteContractInfoDemo(ContractInfoDemo contractInfoDemo);
}
