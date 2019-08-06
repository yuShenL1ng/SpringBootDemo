package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.aop.MysqlOperation;
import com.example.demo.dao.RichTextListDao;
import com.example.demo.model.RichTextList;
import com.example.demo.service.RichTextListService;

@Service
@Transactional
public class RichTextListServiceImpl implements RichTextListService {

	@Autowired
	private RichTextListDao richTextListDao;
	
	@MysqlOperation(value = "添加公告")
	@Override
	public int addRichTextList(RichTextList richTextList) {
		// TODO Auto-generated method stub
		return richTextListDao.addRichTextList(richTextList);
	}

	@MysqlOperation(value = "查看公告")
	@Override
	public List<RichTextList> getRichTextList(RichTextList richTextList) {
		// TODO Auto-generated method stub
		return richTextListDao.getRichTextList(richTextList);
	}

}
