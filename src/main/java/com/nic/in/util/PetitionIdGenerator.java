package com.nic.in.util;

import java.util.Date;

public class PetitionIdGenerator {

	@SuppressWarnings("deprecation")
	public static String idGenerate(String queryObject, String type) {

		
		//generating petittion based on the type of requests Individual and Group using format P+Type of petition+year+serial number 0001.
		
		if (queryObject != null) {
			String pid = queryObject.substring(2);
			int addpid = Integer.parseInt(pid);
			addpid++;
			if (type.equals("I")) {
				queryObject = "P" + type + addpid;
			}
			if (type.equals("G")) {
				queryObject = "P" + type + addpid;
			}
		} else {
			Date date = new Date();
			int year = date.getYear() + 1900;

			if (type.equals("I")) {
				queryObject = "P" + type + year + "0001";
			}
			if (type.equals("G")) {
				queryObject = "P" + year + "0001";
			}
		}
		return queryObject;
	}
}
