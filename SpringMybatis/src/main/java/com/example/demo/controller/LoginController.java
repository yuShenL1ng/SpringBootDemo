package com.example.demo.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.model.ResponseInfo;
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
	public @ResponseBody ResponseInfo login(HttpServletRequest request,@RequestBody Userinfo Info) throws IOException {
		ResponseInfo info = new ResponseInfo();	
		// 获取用户信息
		Userinfo userInfo = loginService.login(Info);
		if(userInfo != null) {
				request.getSession().setAttribute("user", userInfo);
		        Map<String, Object> maps = new HashMap<>();
		        maps.put("token", userInfo.getId());
				info.setCode(userInfo.getUsername());
//			}
		} else {
			info.setCode("error");
            info.setMessage("账号或密码错误");
		}
		
		return info;
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
