package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.model.ContractInfoDemo;

@Repository
@Mapper
public interface ContractInfoDemoDao {

	int addContractInfoDemo(ContractInfoDemo contractInfoDemo);
	
	List<ContractInfoDemoDao> getContractInfoDemoList(ContractInfoDemo contractInfoDemo);
	
	int updateContractInfoDemo(ContractInfoDemo contractInfoDemo);
	
	int deleteContractInfoDemo(ContractInfoDemo contractInfoDemo);
}
