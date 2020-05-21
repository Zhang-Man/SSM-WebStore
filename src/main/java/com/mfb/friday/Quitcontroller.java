package com.mfb.friday;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;

public class Quitcontroller 
{
	@RequestMapping("/quit")
	public String quit(HttpSession session) { 
		session.setAttribute("user",null);
		System.out.println("您已退出");
		return "index";
	}
}
