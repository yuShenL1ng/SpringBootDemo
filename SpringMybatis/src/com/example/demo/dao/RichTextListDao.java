package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.model.RichTextList;

@Repository
@Mapper
public interface RichTextListDao {

	int addRichTextList(RichTextList richTextList);
	
	List<RichTextList> getRichTextList(RichTextList richTextList);
}
