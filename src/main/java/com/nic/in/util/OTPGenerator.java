package com.nic.in.util;

import java.util.Random;

public class OTPGenerator {

	public static int otpGenerator() {
		Random rnd = new Random();
		int n = 2000 + rnd.nextInt(900);
		return n;
	}
}
