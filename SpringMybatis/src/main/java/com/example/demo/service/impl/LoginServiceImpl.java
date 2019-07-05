package com.example.demo.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dao.LoginDao;
import com.example.demo.model.Userinfo;
import com.example.demo.service.LoginService;

@Service
@Transactional
public class LoginServiceImpl implements LoginService{
	@Autowired
	private LoginDao loginDao;
	
	/* 
	 * 通过账号密码验证登录
	 */
	@Override
	public Userinfo login(Userinfo Info) {
		return loginDao.login(Info);
	}
	
	
}
