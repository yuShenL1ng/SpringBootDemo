package com.example.demo.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.client.ClientProtocolException;
import org.jsoup.Connection;
import org.jsoup.Connection.Method;
import org.jsoup.Connection.Response;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.example.demo.model.RMBCentralParityPOJO;
import com.example.demo.model.Userinfo;
import com.example.demo.util.DownloadLoginfo;
import com.example.demo.util.HttpCommunication;
import com.example.demo.util.Uploadfiles;

@Controller
@RequestMapping("/test")
public class WebCrawler {

	public static Connection connect;
	public static Map<String, String> cookies;
	
	@RequestMapping("/test5.action")
	@ResponseBody
	public List<RMBCentralParityPOJO> Test5(HttpCommunication hc) throws ClientProtocolException, IOException {
		Document doc = Jsoup.connect("http://www.dyhjw.com/dyhjw/etf.html").get();
		// 使用选择器选择该table内所有的<tr> <tr/>
		Elements trs = doc.select("table").select("tr");
		// 遍历该表格内的所有的<tr> <tr/>
		List<RMBCentralParityPOJO> rmbList = new ArrayList<RMBCentralParityPOJO>();
		for (int i = 1; i < trs.size(); ++i) {
			// 获取一个tr
			Element tr = trs.get(i);
			// 获取该行的所有td节点
			Elements tds = tr.select("td");
			// 选择某一个td节点
			RMBCentralParityPOJO rmb = new RMBCentralParityPOJO();
			for (int j = 0; j < tds.size(); ++j) {
				Element td = tds.get(j);
				String text = td.text();
				System.out.println(text);
				switch (j) {
				case 0:
					rmb.setDate(text);
					break;
				case 1:
					rmb.setJingcheng(Double.valueOf(text));
					break;
				case 2:
					rmb.setMoney(Double.valueOf(text));
					break;
				case 3:
					rmb.setZhengjian(text);
					break;
				default:
					break;
				}
			}
			rmbList.add(rmb);
		}
		return rmbList;
	}
	
	@RequestMapping("/yzm.jpg")
	@ResponseBody
	public void yzm(HttpCommunication hc,HttpServletRequest request, HttpServletResponse response) throws Exception {
		DownloadLoginfo downloadLoginfo = new DownloadLoginfo();
		downloadLoginfo.getLogInfo(request,response);
		cookies = downloadLoginfo.getCookies();
		System.out.println("1========>" + downloadLoginfo.getCookies());
		Uploadfiles.showImage("yzm.png", request, response);
	}

	@RequestMapping("/test6.action")
	@ResponseBody
	public JSONObject Test6(@RequestBody Userinfo userinfo) throws Exception {
		String urlLogin = "http://demo.open.renren.io/renren-security/sys/login";
		connect = Jsoup.connect(urlLogin);
		// 伪造请求头
		connect.header("Accept", "application/json, text/javascript, */*; q=0.01").header("Accept-Encoding", "gzip, deflate");

		connect.header("Accept-Language", "zh-CN,zh;q=0.9").header("Connection", "keep-alive"); // connect.header("Content-Length",
																						// "56");
		connect.header("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
		connect.header("Host", "demo.open.renren.io").header("Origin", "http://demo.open.renren.io").header("Referer",
				"http://demo.open.renren.io/renren-security/login.html");

		connect.header("User-Agent",
				"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36")
		.header("X-Requested-With","XMLHttpRequest");
		connect.data("username", "admin").data("password", "admin").data("captcha", userinfo.getYzm());
		connect.cookies(cookies);
		Response res = connect.ignoreContentType(true).method(Method.POST).execute();// 执行请求
		System.out.println(res.statusCode() + "-----------" + res.statusMessage());
		System.out.println(res.cookies());
		System.out.println("---------获取的第一次登录之后的页面-----------");
		String body = res.body();// 获取响应体
		System.out.println(body);
		System.out.println("---------获取信息-----------");
		String urlIndex = "http://demo.open.renren.io/renren-security/sys/user/list";
		connect = Jsoup.connect(urlIndex);
		connect.cookies(cookies);
		res = connect.ignoreContentType(true).method(Method.GET).execute();// 执行请求
		String body2 = res.body();// 获取响应体
		System.out.println(body2);
		JSONObject jo = JSONObject.parseObject(new String(body2));
		return jo;
	}
	
	@RequestMapping("/test7.action")
	@ResponseBody
	public JSONArray Test7() throws Exception {
		String deptUrl = "http://demo.open.renren.io/renren-security/sys/dept/list";
		connect = Jsoup.connect(deptUrl);
		connect.cookies(cookies);
		Response res = connect.ignoreContentType(true).method(Method.GET).execute();// 执行请求
		String body2 = res.body();// 获取响应体
		System.out.println("---------获取部门-----------");
		System.out.println(body2);
		JSONArray ja = JSONArray.parseArray(body2);
		return ja;
	}

}
