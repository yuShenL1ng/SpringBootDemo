package com.example.demo.util;

import static org.springframework.test.web.client.match.MockRestRequestMatchers.header;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Connection;
import org.jsoup.Connection.Method;
import org.jsoup.Connection.Response;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

public class DownloadLoginfo {

	/**
	 * url获取图片并且保存到本地
	 * 
	 * @author liqiang
	 *
	 */
	/**
	 * 第一次访问获取的cookie(查看发现就返回一个cookie:ASP.NET_SessionId)
	 */
	private Map<String, String> cookies = null;
	/**
	 * __viewstate 教务系统用于验证的信息
	 */
	private String viewState = null;

	public DownloadLoginfo() {
		this.cookies = new HashMap<String, String>();
		;
		this.viewState = "";
	}

	/**
	 * 获取登录信息 主要就是访问一下主页面，获取一个__viewstate与cookie
	 */
	public void getLogInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String urlLogin = "http://demo.open.renren.io/renren-security/captcha.jpg";
		Connection connect = Jsoup.connect(urlLogin);
		// 伪造请求头
		//connect.header("Content-Length", "56");
		connect.header("Host", "demo.open.renren.io");
		connect.header("User-Agent",
				"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36");

		// 请求url获取响应信息
		Response res = connect.ignoreContentType(true).method(Method.GET).execute();// 执行请求
		// 获取返回的cookie
		System.out.println("res.cookies()========>"+res.cookies());
		this.cookies = res.cookies();
		System.out.println("cookies.entrySet()========>"+cookies.entrySet());
		for (Entry<String, String> entry : cookies.entrySet()) {
			System.out.println(entry.getKey() + "---------" + entry.getValue());
		}
		// 获取响应体
		//String body = res.body();
		// 调用下面方法获取__viewstate
		//this.getViewState(body);// 获取viewState
		// 调用下载验证码的工具类下载验证码
		JsoupDoloadPicture.downloadImg("http://demo.open.renren.io/renren-security/captcha.jpg", cookies,request,response);
		;
	}

	/**
	 * 获取viewstate
	 * 
	 * @return
	 */
	public String getViewState(String htmlContent) {
		Document document = Jsoup.parse(htmlContent);
		Element ele = document.select("input[name='__VIEWSTATE']").first();
		String value = ele.attr("value");
		// 获取到viewState
		this.viewState = value;
		return value;
	}

	public Map<String, String> getCookies() {
		return cookies;
	}

	public void setCookies(Map<String, String> cookies) {
		this.cookies = cookies;
	}

	public String getViewState() {
		return viewState;
	}

	public void setViewState(String viewState) {
		this.viewState = viewState;
	}

}
