package com.example.demo.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.Userinfo;

@Mapper
public interface LoginDao {

	// 判断是否存在用户
	Userinfo login(Userinfo Info);
	
}
