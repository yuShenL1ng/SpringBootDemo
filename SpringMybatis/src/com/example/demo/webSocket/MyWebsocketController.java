package com.example.demo.webSocket;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
@RequestMapping("/MyWebsocket")
public class MyWebsocketController {
	
	
	@RequestMapping("/getMyWebsocket.action")
	@ResponseBody
	public Map<String,Object> getMyWebsocket() {
		CopyOnWriteArraySet<MyWebsocket> list = MyWebsocket.webSockets;
		int count = list.size();
		List<Map<String,Object>> nameList = new ArrayList<>();
		 for(MyWebsocket webSocket : list) {
			 Map<String,Object> map = new HashMap<>();
			 map.put("id", webSocket.session.getId());
			 map.put("label", webSocket.name);
			 nameList.add(map);
	        }
	    Map<String,Object> map = new HashMap<>();
	    map.put("nameList", nameList);
	    map.put("count", count);
		return map;
	}
	
	@RequestMapping("sendOneWebSocket.action")
    public String sendOneWebSocket(String userName, String message) {
    	String text=userName+" 你好！ 这是websocket单人发送！";
        return text;
    }

}
