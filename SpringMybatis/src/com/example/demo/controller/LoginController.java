package com.example.demo.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.model.Userinfo;
import com.example.demo.service.LoginService;


/**
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	private LoginService loginService;
		
	/**
	 * 登录验证
	 * @param 获取用户名和密码
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/login.action")
	public @ResponseBody Userinfo login(HttpServletRequest request,@RequestBody Userinfo Info) throws IOException {
		// 获取用户信息
		Userinfo userInfo = loginService.login(Info);
		return userInfo;
		
	}
	
	@RequestMapping("/insertUserInfo.action")
	public @ResponseBody int insertUserInfo(HttpServletRequest request,@RequestBody Userinfo Info) throws IOException {
		int result = loginService.insertUserInfo(Info);
		return result;
	}
	
	@RequestMapping("/updateUserInfo.action")
	public @ResponseBody int updateUserInfo(HttpServletRequest request,@RequestBody Userinfo Info) throws IOException {
		int result  = loginService.updateUserInfo(Info);
		return result;
	}
    
}
