package com.example.demo.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class Common {
	public static final Integer SFTG_YES = 1;
	public static final Integer SFTG_NO = 0;

	public static final String PAY_SMS = "编号为<用户编号>的<用户名称>，交费<收费金额>元，用电地址为<用电地址>，请尽快为其复电。";

	/**
	 * 输入流写入文件
	 * 
	 * @param is
	 * @param fileName
	 * @throws IOException
	 */
	public static void inputStreamToFile(InputStream is, String fileName)
			throws IOException {
		OutputStream os = null;
		File file = new File(fileName);
		os = new FileOutputStream(file);
		byte[] bytes = new byte[1024];
		int count = 0;
		while ((count = is.read(bytes)) != -1) {
			os.write(bytes, 0, count);
		}

		is.close();
		os.close();
	}

	public static void main(String[] args) {
	}
}
