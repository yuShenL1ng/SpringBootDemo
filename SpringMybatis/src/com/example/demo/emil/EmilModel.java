package com.example.demo.emil;

import java.util.List;
import java.util.Map;

public class EmilModel {

	private String userFrom;
	private List<Map<String,String>> userTo;
	private String subject;
	private String test;
	
	public String getUserFrom() {
		return userFrom;
	}
	public void setUserFrom(String userFrom) {
		this.userFrom = userFrom;
	}
	
	public List<Map<String, String>> getUserTo() {
		return userTo;
	}
	public void setUserTo(List<Map<String, String>> userTo) {
		this.userTo = userTo;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getTest() {
		return test;
	}
	public void setTest(String test) {
		this.test = test;
	}
	
	
}
