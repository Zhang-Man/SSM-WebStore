package com.mfb.friday;

import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mfb.friday.pojo.MfbUser;
import com.mfb.friday.service.UserService;
import com.mfb.friday.utils.AboutTimeUtils;
import com.mfb.friday.utils.ServerResponse;
@Controller
public class MfbUserController {
	
	
	
	@Autowired
	private UserService userservice;
	
	
	@RequestMapping("/login")
	public ModelAndView test() {
		String str = "this is a SpringMVC instance!";
		return new ModelAndView("login", "str", str);
	}
	
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public @ResponseBody ServerResponse<MfbUser> doLogin(@RequestBody MfbUser user, HttpSession sess) {
		MfbUser user1 = userservice.SelectOne(user);
		System.out.println(user1.getRole());
		if(user1!=null&&user1.getRole().equals("admin")) {
		ServerResponse<MfbUser> serverResponse = ServerResponse.createBySuccess("successful", user1);
		if(serverResponse.isSuccess()) {
			 sess.setAttribute("user",serverResponse.getData());
		}
		return serverResponse;
		}else {
			ServerResponse<MfbUser> ServerResponse = com.mfb.friday.utils.ServerResponse.createByErrorMessage("error");
			return ServerResponse;
	}
	}
	@RequestMapping(value="/logout.do")
	public String logout(HttpSession sess) {
		sess.removeAttribute("user");
		sess.invalidate();
		return "login";
	}
	
	
	@RequestMapping(value="/adminindex.do")
	public String toIndex() {
		return "AdminIndex";
	}
	
	
	
	//@RequestMapping(value = "/success.do", method = RequestMethod.POST)
	//人员管理
	@RequestMapping(value = "/success.do")
    public String toSelectAll(Model model) {
        try {
            List<MfbUser> list = userservice.FindAll();
            model.addAttribute("list", list);
        } catch (Exception e) {
            System.out.println("selectAll error");
        }
        return "UserInfor";
    }
	@RequestMapping(value="/detail.do")
	public String toSelectOne(int id,Model model) {
		MfbUser record = new MfbUser();
		record.setId(id);
		MfbUser dbuser=userservice.SelectUserById(id);
		try {
			model.addAttribute("Mfbuser",dbuser );
			model.addAttribute("age",AboutTimeUtils.getAgeByBirth(dbuser.getBirthday()));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return "Userdetail";
	}
	@RequestMapping(value="/welcome.do")
	public String BackToWelcome() {
		return "Welcome";
	}
	
	@SuppressWarnings("unused")
	@RequestMapping(value="/updateUser.do", method = RequestMethod.POST)
	public @ResponseBody ServerResponse<MfbUser> doUpdate(@RequestBody MfbUser user,
			HttpSession sess) {
		Integer influence = userservice.updateByPrimaryKeySelective(user);
		if(influence!=null) {
		ServerResponse<MfbUser> serverResponse = ServerResponse.createBySuccess("successful", user);
		return serverResponse;
	}else {
		ServerResponse<MfbUser> ServerResponse = com.mfb.friday.utils.ServerResponse.createByErrorMessage("error");
		return ServerResponse;
	}
		}
	@SuppressWarnings("unused")
	@RequestMapping(value="/deleteUser.do",method=RequestMethod.POST)
	public @ResponseBody ServerResponse<Integer> doUpdate(Integer id) {
		System.out.println(id);
		Integer influence = userservice.deleteByPrimaryKey(id);
		if(influence!=null) {
		ServerResponse<Integer> serverResponse = ServerResponse.createBySuccess("successful", id);
		return serverResponse;
	}else {
		ServerResponse<Integer> ServerResponse = com.mfb.friday.utils.ServerResponse.createByErrorMessage("error");
		return ServerResponse;
	}
}
	@RequestMapping(value="/Toaddproduct.do")
	public String ToaddProduct() {
		return "AddProduct";
	}
	@RequestMapping(value="/charts.do")
	public String Tocharts() {
		return "analysis";
	}
}
