package com.quanwc.blog.test;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TestdDate {

	public static void main(String[] args) {
		
		System.out.println(System.currentTimeMillis());
		Date date = new Date(System.currentTimeMillis());
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String str = sdf.format(date);
System.out.println(str);
	}

}
