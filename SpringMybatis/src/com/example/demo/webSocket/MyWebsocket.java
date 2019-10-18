package com.example.demo.webSocket;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

/***
 *
 * Created by 80071482 on 2018/2/23.
 * Author (Bony)
 ***/
@ServerEndpoint(value = "/websocket/{userName}")
@Component
public class MyWebsocket {
		public Session session;
		public String name;
	    public static CopyOnWriteArraySet<MyWebsocket> webSockets =new CopyOnWriteArraySet<>();
	    private static Map<String,Session> sessionPool = new HashMap<String,Session>();
    /**
     * 连接建立成功调用的方法
     * @throws IOException 
     * @throws JsonMappingException 
     * @throws JsonGenerationException 
     */
    @OnOpen
    public void onOpen(Session session, @PathParam(value="userName")String userName) throws JsonGenerationException, JsonMappingException, IOException {
        System.out.println("连接成功");
        this.session = session;
        this.name = userName;
        webSockets.add(this);
        sessionPool.put(userName, session);
        System.out.println(userName+"【websocket消息】有新的连接，总数为:"+webSockets.size());
        SocketMsg socket = new SocketMsg();
        socket.setCountAll(webSockets.size());
        List<Map<String,Object>> listMap = new ArrayList<>();
        for(MyWebsocket webSocket : webSockets) {
			 Map<String,Object> map = new HashMap<>();
			 map.put("id", webSocket.session.getId()+1);
			 map.put("label", webSocket.name);
			 listMap.add(map);
	        }
        socket.setNameList(listMap);
        socket.setFromUser(userName);
        socket.setFromSessionId(session.getId()+1);
        socket.setIsLogin(0);
        StringWriter writer = new StringWriter();
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(writer, socket);
        String jsonText = writer.toString();
        for(MyWebsocket webSocket : webSockets) {
                webSocket.session.getAsyncRemote().sendText(jsonText);
        	}
    }

    /**
     * 连接关闭调用的方法
     * @throws IOException 
     * @throws JsonMappingException 
     * @throws JsonGenerationException 
     */
    @OnClose
    public void onClose(Session session,@PathParam(value="userName")String userName) throws JsonGenerationException, JsonMappingException, IOException {
        System.out.println("有一连接关闭");
        sessionPool.put(this.name, null);
        webSockets.remove(this);
        ObjectMapper objectMapper = new ObjectMapper();
        SocketMsg socket = this.getSocketInfo("");
        try {
            for(MyWebsocket webSocket : webSockets) {
                System.out.println("【websocket消息】广播消息:"+socket.getMsg());
                socket.setIsLogin(3);
                StringWriter writer = new StringWriter();
    			 objectMapper.writeValue(writer, socket);
    			 String jsonText = writer.toString();
                    webSocket.session.getAsyncRemote().sendText(jsonText);
            	}
            } catch (Exception e) {
                    e.printStackTrace();
                }
/*        SocketMsg socket = new SocketMsg();
        socket.setCountAll(webSockets.size());
        List<Map<String,Object>> listMap = new ArrayList<>();
        for(MyWebsocket webSocket : webSockets) {
			 Map<String,Object> map = new HashMap<>();
			 map.put("id", webSocket.session.getId()+1);
			 map.put("label", webSocket.name);
			 listMap.add(map);
	        }
        socket.setNameList(listMap);
        socket.setIsLogin(3);
        StringWriter writer = new StringWriter();
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(writer, socket);
        String jsonText = writer.toString();
        this.session.getAsyncRemote().sendText(jsonText);*/
        System.out.println("【websocket消息】连接断开，总数为:"+webSockets.size());
    }

    /**
     * 收到客户端消息后调用的方法
     *
     * @param message 客户端发送过来的消息
     */
    @OnMessage
    public void onMessage(String message,Session session,@PathParam(value="userName")String userName) {
        System.out.println("来自客户端的消息:" + message);
        try {
        	ObjectMapper objectMapper = new ObjectMapper();
        	SocketMsg socket = this.getSocketInfo(message);
        	socket.setIsLogin(1);
        	 if(socket.getType() == 1){
        		 socket.setFromSessionId(session.getId()+1);
        		 Session fromSession = sessionPool.get(socket.getFromUser());
        		 Session toSession = sessionPool.get(socket.getToUser());
        		 //发送给接受者.
        		 if(toSession != null){
        			 StringWriter writer = new StringWriter();
        			 objectMapper.writeValue(writer, socket);
        			 String jsonText = writer.toString();
        		 //发送给发送者.
        		 fromSession.getAsyncRemote().sendText(jsonText);
        		 toSession.getAsyncRemote().sendText(jsonText);
        		 }else{
        			 //发送给发送者.
        			 socket.setMsg("系统消息：对方不在线");
        			 StringWriter writer = new StringWriter();
        			 objectMapper.writeValue(writer, socket);
        			 String jsonText = writer.toString();
        		 fromSession.getAsyncRemote().sendText(jsonText);
        		 }
        	}else {
        		this.sendAllMessage(socket);
        	}
		} catch (Exception e) {
			// TODO: handle exception
		}
        //this.sendAllMessage(message,userName);
    }
    
 // 此为广播消息
    public void sendAllMessage(SocketMsg socket) {
    	ObjectMapper objectMapper = new ObjectMapper();
        try {
        for(MyWebsocket webSocket : webSockets) {
            System.out.println("【websocket消息】广播消息:"+socket.getMsg());
            socket.setIsLogin(1);
            StringWriter writer = new StringWriter();
			 objectMapper.writeValue(writer, socket);
			 String jsonText = writer.toString();
                webSocket.session.getAsyncRemote().sendText(jsonText);
        	}
        } catch (Exception e) {
                e.printStackTrace();
            }
    }
    
 // 此为单点消息
    public void sendOneMessage(String userName, String message) {
    	 System.out.println("【websocket消息】单点消息:"+message);
        Session session = sessionPool.get(userName);
        if (session != null) {
            try {
                session.getAsyncRemote().sendText(message);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 发生错误时调用
     */
    @OnError
    public void onError(Session session, Throwable error) {
        System.out.println("发生错误");
        error.printStackTrace();
    }
    
    public SocketMsg getSocketInfo(String message) throws JsonParseException, JsonMappingException, IOException {
    	SocketMsg socket = new SocketMsg();
    	 ObjectMapper objectMapper = new ObjectMapper();
    	 if(!message.equals("")) {
    		 socket = objectMapper.readValue(message, SocketMsg.class);
    	 }
    	 socket.setCountAll(webSockets.size());
	        List<Map<String,Object>> listMap = new ArrayList<>();
	        for(MyWebsocket webSocket : webSockets) {
				 Map<String,Object> map = new HashMap<>();
				 map.put("id", webSocket.session.getId()+1);
				 map.put("label", webSocket.name);
				 listMap.add(map);
		        }
	        socket.setNameList(listMap);
    	return socket;
    }


}