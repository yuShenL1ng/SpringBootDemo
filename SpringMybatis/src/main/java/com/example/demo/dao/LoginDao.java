package com.example.demo.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.Userinfo;

@Mapper
public interface LoginDao {

	// 判断是否存在用户
	Userinfo login(Userinfo Info);
	
	// 添加用户
	int insertUserInfo(Userinfo Info);
		
	// 修改用户
	int updateUserInfo(Userinfo Info);
	
}
