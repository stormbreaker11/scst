package com.nic.in.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;

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
	}
	
    public static Date dateFormat() throws ParseException {
		LocalDateTime ldt = LocalDateTime.now();
		String format = DateTimeFormatter.ofPattern("yyyy-MM-dd", Locale.ENGLISH).format(ldt);
		Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(format);
		return date1;
    	
    }
	
}
