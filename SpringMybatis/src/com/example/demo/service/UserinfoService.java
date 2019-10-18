package com.example.demo.service;

import java.util.List;
import java.util.Map;

import com.example.demo.model.Userinfo;


public interface UserinfoService {

	List<Userinfo> getAppUser(Map<String, Object> maps);

}
