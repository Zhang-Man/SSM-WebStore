package com.mfb.friday;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSONObject;
import com.mfb.friday.mapper.MfbUserMapper;
import com.mfb.friday.pojo.MfbCategory;
import com.mfb.friday.pojo.MfbUser;
import com.mfb.friday.serviceImpl.CategoryServiceImpl;
import com.mfb.friday.serviceImpl.UserServiceImpl;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

@Controller
public class AllUsercontroller {

	@Autowired
	private MfbUserMapper mfbUserMapper;
	@Autowired
	private UserServiceImpl userserviceimpl;
	@Autowired
	private CategoryServiceImpl categoryserviceimpl;
	
	
	@RequestMapping(value="/selectAllUser.do",method = RequestMethod.GET)
	public String selectAllUser() throws Exception {
		List<MfbUser> listuser=userserviceimpl.selectAll();
		if(listuser!=null) {
			System.out.println("显示所有人员成功");
			for(MfbUser m:listuser) 
			{
				System.out.println(m.getUsername());
			}
			return "index";
		}else {
			System.out.println("显示所有人员失败！");
			return "index";
		}
	}
	
}
