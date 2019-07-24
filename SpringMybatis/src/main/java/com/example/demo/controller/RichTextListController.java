package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.model.RichTextList;
import com.example.demo.service.RichTextListService;

@Controller
@RequestMapping("/richTextList")
public class RichTextListController {

	@Autowired
	private RichTextListService richTextListService;
	
	@RequestMapping("/add.action")
	@ResponseBody
	public int addRichTextList(HttpServletRequest request,@RequestBody RichTextList richTextList) {
		return richTextListService.addRichTextList(richTextList);
	}
	
	@RequestMapping("/getRichTextList.action")
	@ResponseBody
	public List<RichTextList> getRichTextList(HttpServletRequest request,@RequestBody RichTextList richTextList) {
		return richTextListService.getRichTextList(richTextList);
	}
}
