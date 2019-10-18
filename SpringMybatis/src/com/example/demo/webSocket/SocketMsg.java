package com.example.demo.webSocket;

import java.util.List;
import java.util.Map;

public class SocketMsg {

	private int type;   //聊天类型0：群聊，1：单聊.
	private int countAll;
	private List<Map<String,Object>> nameList;
    private String fromUser;//发送者.
    private String fromSessionId;//发送者.
    private String toUser;//接受者.
    private String toUserSessionId;//接受者.
    private String msg;//消息
    private int isLogin; //是否第一次登陆  0为是
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getFromUser() {
		return fromUser;
	}
	public void setFromUser(String fromUser) {
		this.fromUser = fromUser;
	}
	public String getToUser() {
		return toUser;
	}
	public void setToUser(String toUser) {
		this.toUser = toUser;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getFromSessionId() {
		return fromSessionId;
	}
	public void setFromSessionId(String fromSessionId) {
		this.fromSessionId = fromSessionId;
	}
	public String getToUserSessionId() {
		return toUserSessionId;
	}
	public void setToUserSessionId(String toUserSessionId) {
		this.toUserSessionId = toUserSessionId;
	}
	public int getCountAll() {
		return countAll;
	}
	public void setCountAll(int countAll) {
		this.countAll = countAll;
	}
	public List<Map<String, Object>> getNameList() {
		return nameList;
	}
	public void setNameList(List<Map<String, Object>> nameList) {
		this.nameList = nameList;
	}
	public int getIsLogin() {
		return isLogin;
	}
	public void setIsLogin(int isLogin) {
		this.isLogin = isLogin;
	}
	
	
	
	
	

    
}
