package com.mfb.friday;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSONObject;
import com.mfb.friday.pojo.MfbCategory;
import com.mfb.friday.serviceImpl.CategoryServiceImpl;

@Controller
public class Categorycontroller 
{
	
	@Autowired
	private CategoryServiceImpl categoryserviceimpl;
	
	
	@RequestMapping(value="/selectCategory.do",method = RequestMethod.GET)
	public void selectCategory(HttpServletResponse response,@RequestParam String json) throws Exception {
		MfbCategory record=new MfbCategory();
		JSONObject json3=JSONObject.parseObject(json);
		int intstatus = Integer.valueOf(json3.getString("status")).intValue();
		System.out.println(json3.getString("name")+" "+intstatus);
		record.setName(json3.getString("name"));
		record.setStatus(intstatus);
		List<MfbCategory> listcategory=categoryserviceimpl.selectSelective(record);
		if(listcategory!=null) {
			response.setContentType("text/html;charset=utf-8");
			JSONObject json2=new JSONObject();
			json2.put("listcategory",listcategory);
			PrintWriter out=response.getWriter();
            out.write(json2.toString());
            out.flush();
            out.close();
			System.out.println("货物查询成功");
		}else {
			System.out.println("货物查询失败！");
		}
	}
	
	@RequestMapping(value="/selectAllCategory.do",method = RequestMethod.GET)
	public void selectAllCategory() throws Exception {
		List<MfbCategory> listcategory=categoryserviceimpl.selectAll();
		if(listcategory!=null) {
			System.out.println("显示所有货物成功");
			for(MfbCategory m:listcategory) 
			{
				System.out.println(m.getName());
			}
		}else {
			System.out.println("显示所有货物失败！");
		}
	}
	
	
}
