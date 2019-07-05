package com.example.demo.service;
import java.util.Map;

import com.example.demo.model.Userinfo;


public interface LoginService {
	
	// 登录验证
	Userinfo login(Userinfo Info);
	
}
