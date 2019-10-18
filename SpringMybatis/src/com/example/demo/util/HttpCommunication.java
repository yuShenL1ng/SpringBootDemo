package com.example.demo.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.client.params.CookiePolicy;
import org.apache.http.client.protocol.RequestAcceptEncoding;
import org.apache.http.client.protocol.ResponseContentEncoding;
import org.apache.http.cookie.Cookie;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;

/**
 * HttpCommunicate.java
 *
 * 功  能： （用一句话描述类的功能）
 * 类  名： HttpCommunicate
 *
 *   ver     变更日                    部门               开发者     变更内容
 * ─────────────────────────────────────────────────────
 *   V1.00   2013-8-6          研发部	         王继光          初版
 *
 * Copyright (c) 2008, 2013 Infopower corporation All Rights Reserved.
 */

/**
 * 
 * @author 王继光
 * @version Ver 1.0 2013-8-6 初版
 * @since Ver 1.0
 */
public class HttpCommunication {
	private static Logger logger = Logger.getLogger(HttpCommunication.class);
	private DefaultHttpClient httpClient = null;

	public HttpCommunication() {
		httpClient = new DefaultHttpClient();	
		httpClient.getParams().setParameter(ClientPNames.COOKIE_POLICY,
				CookiePolicy.BROWSER_COMPATIBILITY);
		httpClient.addRequestInterceptor(new RequestAcceptEncoding());
		httpClient.addResponseInterceptor(new ResponseContentEncoding());
		httpClient.getParams()
				.setParameter(ClientPNames.HANDLE_REDIRECTS, true);
	}

	public InputStream downloadFile(String url, List<NameValuePair> params)
			throws Exception {
		HttpPost httppost = new HttpPost(url);
		UrlEncodedFormEntity uefEntity = null;
		if (params != null && params.size() > 0) {
			uefEntity = new UrlEncodedFormEntity(params, "UTF-8");
			httppost.setEntity(uefEntity);
		}
		HttpResponse response;
		response = httpClient.execute(httppost);
		logger.info(url + ":" + response.getStatusLine());
		if (response.getStatusLine().getStatusCode() >= 400) {
			throw new Exception("" + response.getStatusLine());
		}
		HttpEntity entity = response.getEntity();
		if (entity != null) {
			return entity.getContent();
		}

		return null;
	}

	public String doPost(String url, List<NameValuePair> params)
			throws ClientProtocolException, IOException {
		HttpPost httppost = new HttpPost(url);
		UrlEncodedFormEntity uefEntity = null;
		if (params != null && params.size() > 0) {
			uefEntity = new UrlEncodedFormEntity(params, "UTF-8");
			httppost.setEntity(uefEntity);
		}
		HttpResponse response;
		response = httpClient.execute(httppost);
		logger.info(url + ":" + response.getStatusLine());
		if (response.getStatusLine().getStatusCode() == 302) {
			Header[] headers = response.getHeaders("Location");
			if (headers.length > 0) {
				httppost.releaseConnection();
				return headers[0].getValue();
			}
		}
		HttpEntity entity = response.getEntity();
		if (entity != null) {
			String resContent = EntityUtils.toString(entity, "UTF-8");
			return resContent;
		}
		return null;
	}

	public HttpEntity doPost2(String url, List<NameValuePair> params)
			throws ClientProtocolException, IOException {
		HttpPost httppost = new HttpPost(url);
		UrlEncodedFormEntity uefEntity = null;
		if (params != null && params.size() > 0) {
			uefEntity = new UrlEncodedFormEntity(params, "UTF-8");
			httppost.setEntity(uefEntity);
		}
		HttpResponse response;
		response = httpClient.execute(httppost);
		logger.info(url + ":" + response.getStatusLine());
		return response.getEntity();
	}

	public InputStream doPost4(String url, List<NameValuePair> params)
			throws ClientProtocolException, IOException {
		HttpPost httppost = new HttpPost(url);
		UrlEncodedFormEntity uefEntity = null;
		if (params != null && params.size() > 0) {
			uefEntity = new UrlEncodedFormEntity(params, "UTF-8");
			httppost.setEntity(uefEntity);
		}
		HttpResponse response;
		response = httpClient.execute(httppost);
		logger.info(url + ":" + response.getStatusLine());
		return response.getEntity().getContent();
	}

	public String doPost3(String url, List<NameValuePair> params)
			throws ClientProtocolException, IOException {
		HttpPost httppost = new HttpPost(url);
		UrlEncodedFormEntity uefEntity = null;
		if (params != null && params.size() > 0) {
			uefEntity = new UrlEncodedFormEntity(params, "UTF-8");
			httppost.setEntity(uefEntity);
		}
		HttpResponse response;
		response = httpClient.execute(httppost);
		// logger.info("Post请求响应状态:" + response.getStatusLine());
		logger.info(url + ":" + response.getStatusLine());
		HttpEntity entity = response.getEntity();
		if (entity != null) {
			String resContent = EntityUtils.toString(entity, "UTF-8");
			return resContent;
		}
		return null;
	}

	public String doPost(String url, String requestContent)
			throws ClientProtocolException, IOException {
		HttpPost httppost = new HttpPost(url);
		httppost.setHeader("Content-Type", "application/json;charset=UTF-8");
		StringEntity se = new StringEntity(requestContent, ContentType.create(
				"text/xml", "UTF-8"));
		httppost.setEntity(se);
		HttpResponse response;
		response = httpClient.execute(httppost);
		logger.info(url + ":" + response.getStatusLine());
		HttpEntity entity = response.getEntity();
		if (entity != null) {
			String resContent = EntityUtils.toString(entity, "UTF-8");
			return resContent;
		}
		return null;
	}

	public String doGet(String url) throws ClientProtocolException, IOException {
		HttpGet httpGet = new HttpGet(url);
		HttpResponse response;
		response = httpClient.execute(httpGet);
		// logger.info("Get请求响应状态:" + response.getStatusLine());
		HttpEntity entity = response.getEntity();
		if (entity != null) {
			String resContent = EntityUtils.toString(entity, "UTF-8");
			return resContent;
		}
		return null;
	}

	/*
	 * public HttpEntity doGet(String url) throws ClientProtocolException,
	 * IOException { HttpGet httpGet = new HttpGet(url); HttpResponse response;
	 * response = httpClient.execute(httpGet); logger.info("Get请求响应状态:" +
	 * response.getStatusLine()); return response.getEntity(); }
	 */

	/*
	 * public String doPost(String url, byte[] bytes) { String resultXML = null;
	 * 
	 * HttpPost httppost = new HttpPost(url); httppost.setHeader("Content-Type",
	 * "application/json"); ByteArrayEntity be = new ByteArrayEntity(bytes);
	 * httppost.setEntity(be); try { HttpResponse response =
	 * httpClient.execute(httppost); logger.info("Post请求响应状态:" +
	 * response.getStatusLine()); HttpEntity entity = response.getEntity();
	 * byte[] arr = new byte[512]; InputStream is = entity.getContent();
	 * StringBuffer sb = new StringBuffer(); while (true) { int n =
	 * is.read(arr); if (n == -1) break; ByteBuffer buf =
	 * ByteBuffer.allocate(n); buf.put(arr, 0, n); sb.append(new
	 * String(buf.array())); }
	 * 
	 * resultXML = sb.toString(); } catch (ClientProtocolException e) {
	 * e.printStackTrace(); } catch (IOException e) { e.printStackTrace(); }
	 * return resultXML; }
	 */

	public String doPost(String url, byte[] bytes) {
		String resultXML = null;

		HttpPost httppost = new HttpPost(url);
		httppost.setHeader("Content-Type", "application/json");
		ByteArrayEntity be = new ByteArrayEntity(bytes);
		httppost.setEntity(be);
		try {
			HttpResponse response = httpClient.execute(httppost);
			logger.info("Post请求响应状态:" + response.getStatusLine());
			HttpEntity entity = response.getEntity();
			InputStream is = entity.getContent();

			byte[] arr = new byte[512];
			ExtendableByteBuffer ebb = ExtendableByteBuffer.allocate(1024);

			while (true) {
				int n = is.read(arr);
				if (n == -1)
					break;

				ebb.append(arr, 0, n);
			}

			StringBuffer sb = new StringBuffer();
			sb.append(new String(ebb.array()));
			resultXML = sb.toString();
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return resultXML;
	}

	public List<Cookie> getCookies() {
		return httpClient.getCookieStore().getCookies();
	}

	public String getCookieValue(String cookieName) {
		List<Cookie> cookies = httpClient.getCookieStore().getCookies();
		if (cookies != null && cookies.size() > 0) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals(cookieName)) {
					return cookie.getValue();
				}
			}
		}
		return null;
	}

	public void close() {
		httpClient.getConnectionManager().shutdown();
	}

	/**
	 * 
	 * @param args
	 * @throws Exception
	 * @since Ver 1.0
	 */
	public static void main(String[] args) throws Exception {
		// XmlUtil configUtil = XmlUtil.getInstance("config.xml");
		// List<NameValuePair> params = new ArrayList<NameValuePair>();
		// params.add(new BasicNameValuePair("userName" ,
		// configUtil.getNodeValue("//config/login/user")));
		// params.add(new BasicNameValuePair("password" ,
		// configUtil.getNodeValue("//config/login/user")));
		// String res = doPost(configUtil.getNodeValue("//config/login/url"),
		// params);
		// System.out.println(res);
	}

}
