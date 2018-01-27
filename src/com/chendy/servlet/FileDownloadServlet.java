package com.chendy.servlet;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/download")
public class FileDownloadServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		File file = new File("/Users/baidu/Downloads/PC官网改版V4-20180125170712-0taBN5.pdf");
		if (file.exists()) {
			resp.setContentType("application/pdf");
			resp.addHeader("Content-Disposition", "attachment; filename=a.pdf");
			byte[] buffer = new byte[1024];
			FileInputStream fis = null;
			BufferedInputStream bis = null;
			try {
				fis = new FileInputStream(file);
				bis = new BufferedInputStream(fis);
				OutputStream os = resp.getOutputStream();
				int i = bis.read(buffer);
				while (i != -1) {
					os.write(buffer, 0, i);
					i = bis.read(buffer);
				}
			} catch (IOException ex) {
				System.out.println(ex.toString());
			} finally {
				if (null != bis) {
					bis.close();
				}
				if (null != fis) {
					fis.close();
				}
			}
		}
	}
}
