package com.example.demo.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.model.OperationalLog;

@Repository
@Mapper
public interface OperationalLogDao {

	int addOperationalLog(OperationalLog operationalLog);
}
