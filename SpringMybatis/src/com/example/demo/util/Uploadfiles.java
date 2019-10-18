package com.example.demo.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.model.ResponseInfo;

public class Uploadfiles {
	// 上传文件
	public static ResponseInfo uploadfiles(MultipartFile[] myfiles, String realPath) {
		ResponseInfo info = new ResponseInfo();
		String originalFilename = null;
		for (MultipartFile myfile : myfiles) {
			if (myfile.isEmpty()) {
				break;
			} else {
				String uploadTime = UUID.randomUUID().toString().replaceAll("-", "");
				// 获取文件名
				String name = myfile.getOriginalFilename().substring(0, myfile.getOriginalFilename().indexOf("."));
				String name2 = myfile.getOriginalFilename().substring(myfile.getOriginalFilename().indexOf("."),
						myfile.getOriginalFilename().length());
				originalFilename = new StringBuilder(name).append("_").append(uploadTime).append(name2).toString();
				try {
					FileUtils.copyInputStreamToFile(myfile.getInputStream(), new File(realPath, originalFilename));
					info.setCode("success");
				} catch (IOException e) {
					System.out.println("文件[" + originalFilename + "]上传失败,堆栈轨迹如下");
					e.printStackTrace();
					info.setMessage("");
					info.setCode("error");
					return info;
				}
			}
		}
		return info;
	}

	public static void showImage(String fileName, HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		response.setContentType("image/jpeg");
		String fname = request.getSession().getServletContext().getRealPath("/upload") + "/" + fileName;
//			    String newpath = new String(fname.getBytes("ISO-8859-1"), "UTF-8");
		FileInputStream fis = new FileInputStream(fname);
		OutputStream os = response.getOutputStream();
		try {
			int count = 0;
			byte[] buffer = new byte[1024 * 1024];
			while ((count = fis.read(buffer)) != -1)
				os.write(buffer, 0, count);
			os.flush();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (os != null)
				os.close();
			if (fis != null)
				fis.close();
		}
	}
}
