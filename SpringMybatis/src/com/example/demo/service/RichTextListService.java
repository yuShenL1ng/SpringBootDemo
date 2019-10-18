package com.example.demo.service;

import java.util.List;

import com.example.demo.model.RichTextList;

public interface RichTextListService {

	int addRichTextList(RichTextList richTextList);
	
	List<RichTextList> getRichTextList(RichTextList richTextList);
}
