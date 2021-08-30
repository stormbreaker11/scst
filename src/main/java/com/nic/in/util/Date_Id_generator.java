package com.nic.in.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Date_Id_generator {

	public static String getPetitonerId() {
		Date date = new Date();
		SimpleDateFormat dateFormat= new SimpleDateFormat("yy/MM/dd HH:mm:ss");  
		String format = dateFormat.format(date);
		String replaceAll = format.replaceAll("[^\\w]", "");
		return replaceAll;
	}
	public static void time() {
		
		DateFormat dateFormat = new SimpleDateFormat("hh:mm:ss a");
        Date date = new Date();
        String time=dateFormat.format(date);
        System.out.println(time);
	}
	

	
}
