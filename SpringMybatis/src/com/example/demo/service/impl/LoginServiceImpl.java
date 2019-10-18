package com.example.demo.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.example.demo.aop.MysqlOperation;
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
	@MysqlOperation(value = "用户登录")
	@Override
	public Userinfo login(Userinfo user) {
		Userinfo userinfo = loginDao.login(user);
		if(userinfo!=null) {
			HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
			request.getSession().setAttribute("user", userinfo);
	        Map<String, Object> maps = new HashMap<>();
	        maps.put("token", user.getId());
	        return userinfo;
		}else {
			return null;
		}
	}

	@Override
	//@MysqlOperation(value = "用户注册")
	public int insertUserInfo(Userinfo Info) {
		// TODO Auto-generated method stub
		return loginDao.insertUserInfo(Info);
	}

	@MysqlOperation(value = "用户修改")
	@Override
	public int updateUserInfo(Userinfo Info) {
		// TODO Auto-generated method stub
		return loginDao.updateUserInfo(Info);
	}
	
	
}
