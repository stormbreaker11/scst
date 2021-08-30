package com.nic.in.dao;

import com.nic.in.model.Login;

public interface LoginDao {

	public Login getUser(String mobile);

	public int createUser(String mobile, String otpid, String com);
	
}
