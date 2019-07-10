package com.example.demo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.Userinfo;

@Mapper
public interface UserInfoDao {

	List<Userinfo> getAppUser(Map<String, Object> maps);

}
