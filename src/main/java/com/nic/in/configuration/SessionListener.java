package com.nic.in.configuration;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class SessionListener implements HttpSessionListener {

	@Override
	public void sessionCreated(HttpSessionEvent se) {

		se.getSession().setMaxInactiveInterval(30 * 60);
		se.getSession().setAttribute("timeOutTimeInSeconds", 1200);
		se.getSession().setAttribute("showTimerTimeInSeconds", 1100);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		se.getSession().removeAttribute("login");
	}


}
