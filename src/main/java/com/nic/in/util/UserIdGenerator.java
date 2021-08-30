package com.nic.in.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

public class UserIdGenerator {

	public static String generateRandomNumber() {
		String alphabet = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
		String finalResult;
		int n = alphabet.length();
		String result = new String();
		Random r = new Random();
		for (int i = 0; i < 3; i++) {
			result = result + alphabet.charAt(r.nextInt(n));
		}
		SimpleDateFormat dateFormat= new SimpleDateFormat("dd/mm/yy");
		result = result.toUpperCase();
		Date date = new Date();
		String resultDate = dateFormat.format(date);
		resultDate = resultDate.replaceAll("[^\\w\\s]", "").replaceAll("\\s+", "");
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		String milSec = String.valueOf(c.get(Calendar.MILLISECOND));
		if (milSec.length() == 1) {
			milSec = "00".concat(milSec);
		}
		if (milSec.length() == 2) {
			milSec = "0".concat(milSec);
		}
		result = milSec.concat(result);
		finalResult = result + resultDate;
		
		return finalResult;
    }
	
}
