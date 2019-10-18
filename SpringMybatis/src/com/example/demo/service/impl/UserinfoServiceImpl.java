package com.example.demo.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.UserInfoDao;
import com.example.demo.model.Userinfo;
import com.example.demo.service.UserinfoService;


@Service
public class UserinfoServiceImpl implements UserinfoService{

	@Autowired
	UserInfoDao userInfoDao;
	
	@Override
	public List<Userinfo> getAppUser(Map<String, Object> maps) {
		
		return userInfoDao.getAppUser(maps);
	}

}
