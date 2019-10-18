package com.example.demo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Userinfo;

@Repository
@Mapper
public interface UserInfoDao {

	List<Userinfo> getAppUser(Map<String, Object> maps);

}
