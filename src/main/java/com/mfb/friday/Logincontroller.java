package com.mfb.friday;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
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
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.mfb.friday.mapper.MfbUserMapper;
import com.mfb.friday.pojo.MfbCart;
import com.mfb.friday.pojo.MfbUser;
import com.mfb.friday.serviceImpl.CartServiceImpl;
import com.mfb.friday.serviceImpl.UserServiceImpl;
@Controller
public class Logincontroller {
	
	@Autowired
	private MfbUserMapper mfbUserMapper;
	@Autowired
	private UserServiceImpl userserviceimpl;
	@Autowired
	private CartServiceImpl cartserviceimpl;

	@RequestMapping("/signinjudge")
	public String signinjudge(HttpSession session) { 
		MfbUser mfbuser=(MfbUser) session.getAttribute("user");
		if(mfbuser!=null) 
		{
			System.out.println(mfbuser.getUsername()+"您已登陆");
			return "MyCenter-Order";
		}
		return "signin";
	}
	
	

	@RequestMapping("/userlogout.do")
	public String logout(HttpSession session) { 
		session.setAttribute("user", null);
		System.out.println("您已退出");
		return "index";
	}

	@RequestMapping(value="/userlogin.do",method = RequestMethod.POST)
	public String login(HttpSession session,@RequestParam String username,@RequestParam String password) throws Exception {
		System.out.println(username+" "+password);
		MfbUser record=new MfbUser();
		record.setUsernameAndPassword(username, password);
		MfbUser dbUser=userserviceimpl.SelectOne(record);
		if(dbUser!=null && password.equals(dbUser.getPassword())) {
			session.setAttribute("user", record);
			System.out.println("登陆成功！");
			return "index";
		}else {
			System.out.println("登陆失败！");
			return "signin";
		}
	}
	
	@RequestMapping(value="/insert.do",method = RequestMethod.POST)
	public String insert(HttpSession session,@RequestParam String username,@RequestParam String password,
						@RequestParam String tel,@RequestParam String email,@RequestParam String sex,@RequestParam String birthday) throws Exception {
		MfbUser record=new MfbUser();
		Date date=new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date datebirthday=sdf.parse(birthday);
		record.setAll(username, password, "customer", sex, datebirthday, tel, email, date, date);;
		MfbUser dbUser=userserviceimpl.selectOneByName(record);
		if(dbUser!=null) {
			System.out.println("注册失败！");
			return "signup";
		}else {
			userserviceimpl.InsertOne(record);
			session.setAttribute("user", record);
			MfbCart cartrecord=new MfbCart();
			Date nowTime=new Date();
			MfbUser user=userserviceimpl.selectOneByName(record);
			cartrecord.setAll(user.getId(), 0, 0, 0, nowTime, nowTime);//new cart
			cartserviceimpl.InsertOne(cartrecord);
			System.out.println("注册成功！");
			return "index";
		}
	}
	

	@RequestMapping(value="/indexOnload.do",method = RequestMethod.GET)
	public void indexOnload(HttpSession session,HttpServletResponse response) throws Exception {
		MfbUser mfbuser=(MfbUser) session.getAttribute("user");
		if(mfbuser!=null) {
			response.setContentType("text/html;charset=utf-8");
			JSONObject json=new JSONObject();
			json.put("username",mfbuser.getUsername());
			json.put("status", 1);
			PrintWriter out=response.getWriter();
            out.write(json.toString());
            out.flush();
            out.close();
			System.out.println("已登录 界面显示成功");
		}else {
			response.setContentType("text/html;charset=utf-8");
			JSONObject json=new JSONObject();
			json.put("username","未登录");
			json.put("status", 0);
			PrintWriter out=response.getWriter();
            out.write(json.toString());
            out.flush();
            out.close();
			System.out.println("未登录 界面显示失败");
		}
	}
	
	@RequestMapping(value="/MyCenter-InformationOnload.do",method = RequestMethod.GET)
	public void MyCenter_InformationOnload(HttpSession session,HttpServletResponse response) throws Exception {
		MfbUser mfbuser=(MfbUser) session.getAttribute("user");
		MfbUser user=userserviceimpl.SelectOne(mfbuser);
		if(mfbuser!=null) {
			response.setContentType("text/html;charset=utf-8");
			JSONObject json=new JSONObject();
			json.put("username",user.getUsername());
			json.put("sex", user.getSex());
			json.put("birthday", user.getBirthday());
			json.put("tel", user.getTel());
			json.put("mail", user.getMail());
			PrintWriter out=response.getWriter();
            out.write(json.toString());
            out.flush();
            out.close();
			System.out.println("个人信息已传递");
		}else {
			JSONObject json=new JSONObject();
			json.put("username","未登录");
			json.put("status", "0");
			System.out.println("个人信息未传递");
		}
	}
	
	@RequestMapping(value="/ChangeInfoOnload.do",method = RequestMethod.GET)
	public String ChangeInfoOnload(HttpSession session,HttpServletResponse response) throws Exception {
		MfbUser mfbuser=(MfbUser) session.getAttribute("user");
		MfbUser record=userserviceimpl.SelectOne(mfbuser);
		if(record!=null) {
			response.setContentType("text/html;charset=utf-8");
			JSONObject json=new JSONObject();
			json.put("username",record.getUsername());
			json.put("sex", record.getSex());
			json.put("birthday", record.getBirthday());
			json.put("tel", record.getTel());
			json.put("mail", record.getMail());
			PrintWriter out=response.getWriter();
            out.write(json.toString());
            out.flush();
            out.close();
			System.out.println("信息加载成功！");
			return "ChangeInfo";
		}else {
			System.out.println("信息加载失败！");
			return "ChangeInfo";
		}
	}
	
	@RequestMapping(value="/ChangePassword.do",method = RequestMethod.POST)
	public String ChangePassword(HttpSession session,@RequestParam String newpassword) throws Exception {
		MfbUser user=(MfbUser) session.getAttribute("user");
		if(user!=null) {//ChangePassword
			user.setPassword(newpassword);
			userserviceimpl.updataByname(user);
			System.out.println("密码修改成功");
			return "MyCenter";
		}else {
			System.out.println("密码修改失败！");
			return "ChangePassword";
		}
	}
	
	@RequestMapping(value="/ChangeInformation.do",method = RequestMethod.GET)
	public void ChangeInformation(HttpSession session,@RequestParam String json,HttpServletResponse response) throws Exception {
		String massage=null;
		JSONObject json3=new JSONObject();
		JSONObject json2=JSONObject.parseObject(json);
		MfbUser record=(MfbUser) session.getAttribute("user");
		MfbUser dbUser=userserviceimpl.SelectOne(record);
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		date=format.parse(json2.getString("Birthday"));
		if(dbUser!=null) {
			session.setAttribute("user", null);
			dbUser.setSex(json2.getString("Sex"));
			dbUser.setBirthday(date);
			dbUser.setTel(json2.getString("Tel"));
			dbUser.setMail(json2.getString("Email"));
			userserviceimpl.updataByname(dbUser);
			session.setAttribute("user", dbUser);
			massage="ok";
			json3.put("massage",massage);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
			System.out.println("用户信息更新成功");
		}else {
			massage="ok";
			json3.put("massage",massage);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
			System.out.println("用户信息更新失败！");
		}
	}
	
	@RequestMapping(value="/ForgetPassword.do",method = RequestMethod.POST)
	public String ForgetPassword(@RequestParam String username,@RequestParam String newpassword,
								@RequestParam String tel) throws Exception {
		MfbUser record=new MfbUser();
		record.setUsername(username);
		MfbUser dbUser=userserviceimpl.SelectOne(record);
		record.setPassword(newpassword);
		if(dbUser!=null && tel.equals(dbUser.getTel())) {
			userserviceimpl.updataByname(record);
			System.out.println("密码修改成功");
			return "index";
		}else {
			System.out.println("密码修改失败！");
			return "ForgetPassword";
		}
	}

}
