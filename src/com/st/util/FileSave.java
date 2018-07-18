package com.st.util;

import java.io.FileOutputStream;

import org.springframework.web.multipart.MultipartFile;

public class FileSave {
	public static void save(String dir, MultipartFile mp, String imgname) {
		byte[] data;
		try {
			data = mp.getBytes();
			FileOutputStream out = new FileOutputStream(dir+imgname);
			out.write(data);
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
