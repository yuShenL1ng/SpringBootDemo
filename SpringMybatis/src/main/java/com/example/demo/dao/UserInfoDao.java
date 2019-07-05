package com.example.demo.dao;

import java.util.List;
import java.util.Map;

import com.example.demo.model.Userinfo;


public interface UserInfoDao {

	List<Userinfo> getAppUser(Map<String, Object> maps);

}
