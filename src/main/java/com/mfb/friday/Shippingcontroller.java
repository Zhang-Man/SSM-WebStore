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
import com.mfb.friday.pojo.MfbGoods;
import com.mfb.friday.pojo.MfbShipping;
import com.mfb.friday.pojo.MfbUser;
import com.mfb.friday.serviceImpl.GoodsServiceImpl;
import com.mfb.friday.serviceImpl.ShippingServiceImpl;
import com.mfb.friday.serviceImpl.UserServiceImpl;

@Controller
public class Shippingcontroller 
{
	@Autowired
	private UserServiceImpl userserviceimpl;
	@Autowired
	private ShippingServiceImpl shippingserviceimpl;
	@Autowired
	private GoodsServiceImpl goodsserviceimpl;
	
	
	@RequestMapping(value="/insertshipping.do",method = RequestMethod.POST)
	public String insertshipping(HttpSession session,@RequestParam String receiverName,@RequestParam String receiverPhone,
								@RequestParam String receiverProvince,@RequestParam String receiverZip,
								@RequestParam String receiverCity,@RequestParam String receiverDistrict,
								@RequestParam String receiverAddress) throws Exception {
		MfbUser record=userserviceimpl.SelectOne((MfbUser) session.getAttribute("user"));//get user
		MfbShipping mfbshipping=new MfbShipping();
		Date createTime=new Date();
		Date updateTime=new Date();
		if(record!=null) 
		{
			mfbshipping.setAll(record.getId(), receiverName, receiverPhone, 
							receiverProvince, receiverCity,
							receiverDistrict, receiverAddress,
							receiverZip,createTime, updateTime);
			shippingserviceimpl.InsertOne(mfbshipping);
			System.out.println("地址插入成功");
			return "MyCenter_Address";
		}else 
		{
			System.out.println("地址插入失败");
			return "MyCenter_Address";

		}
	}
	
	@RequestMapping(value="/changeshipping.do",method = RequestMethod.GET)
	public void changeshipping(@RequestParam String json,HttpServletResponse response) throws Exception {
		JSONObject json2=JSONObject.parseObject(json);
		int intid = Integer.valueOf(json2.getString("id")).intValue();
		String massage=null;
		MfbShipping shippingrecord=shippingserviceimpl.selectByPrimaryKey(intid);//search shipping
		if(shippingrecord!=null) 
		{
			Date updateTime=new Date();
			shippingrecord.setChange(json2.getString("receiverName"), json2.getString("receiverPhone"), 
									json2.getString("receiverProvince"), json2.getString("receiverCity"), 
									json2.getString("receiverDistrict"), json2.getString("receiverAddress"), 
									json2.getString("receiverZip"), updateTime);
			shippingserviceimpl.updateByPrimaryKey(shippingrecord);
			massage="ok";
			JSONObject json3=new JSONObject();
			json3.put("massage",massage);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
			System.out.println("地址修改成功");
		}else 
		{
			massage="no";
			JSONObject json3=new JSONObject();
			json3.put("massage",massage);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
			System.out.println("地址修改失败");
		}
	}
	
	
	@RequestMapping(value="/deleteshipping.do",method = RequestMethod.GET)
	public void deleteshipping(@RequestParam String json,HttpServletResponse response) throws Exception {
		String massage=null;
		JSONObject json3=new JSONObject();
		JSONObject json2=JSONObject.parseObject(json);
		int intid = Integer.valueOf(json2.getString("shippingid")).intValue();
		if(shippingserviceimpl.selectByPrimaryKey(intid)!=null) 
		{
			shippingserviceimpl.deleteByPrimaryKey(intid);
			massage="ok";
			json3.put("massage",massage);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
			System.out.println("地址删除成功");
		}else 
		{
			massage="no";
			json3.put("massage",massage);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
			System.out.println("地址删除失败");
		}
	}
	
	@RequestMapping(value="/searchshippingAll.do",method = RequestMethod.GET)
	public void searchshippingAll(HttpSession session,HttpServletResponse response) throws Exception {
		MfbUser user=(MfbUser) session.getAttribute("user");
		MfbUser userrecord=userserviceimpl.selectOneByName(user);
		List<MfbShipping> listshipping=shippingserviceimpl.selectByUserId(userrecord.getId());//search shipping
		if(listshipping!=null) 
		{
			response.setContentType("text/html;charset=utf-8");
			JSONObject json=new JSONObject();
			json.put("listshipping",listshipping);
			PrintWriter out=response.getWriter();
		    out.write(json.toString());
		    out.flush();
		    out.close();
			System.out.println("查询所有地址成功");
		}else 
		{
			System.out.println("查询所有地址失败");
		}
	}
	
	@RequestMapping(value="/searchshippingAllWithOneGoods.do",method = RequestMethod.GET)
	public void searchshippingAllWithOneGoods(HttpSession session,HttpServletResponse response) throws Exception {
		MfbUser user=(MfbUser) session.getAttribute("user");
		MfbUser userrecord=userserviceimpl.selectOneByName(user);
		List<MfbShipping> listshipping=shippingserviceimpl.selectByUserId(userrecord.getId());//search shipping
		Integer goodsid= (Integer) session.getAttribute("goodsidForOrder");
		MfbGoods mfbgoods=goodsserviceimpl.selectByPrimaryKey(goodsid);
		if(listshipping!=null ) 
		{
			response.setContentType("text/html;charset=utf-8");
			JSONObject json=new JSONObject();
			json.put("listshipping",listshipping);
			json.put("goodsid",mfbgoods.getId());
			json.put("price", mfbgoods.getPrice());
			PrintWriter out=response.getWriter();
		    out.write(json.toString());
		    out.flush();
		    out.close();
			System.out.println("查询所有地址和商品成功");
		}else 
		{
			System.out.println("查询所有地址和商品失败");
		}
	}
	
	@RequestMapping(value="/changeshippingOnload.do",method = RequestMethod.GET)
	public String changeshippingOnload(@RequestParam String json,HttpServletResponse response) throws Exception {
		JSONObject json2=JSONObject.parseObject(json);
		int intid = Integer.valueOf(json2.getString("id")).intValue();
		MfbShipping shippingrecord=shippingserviceimpl.selectByPrimaryKey(intid);//search shipping
		if(shippingrecord!=null) 
		{
			response.setContentType("text/html;charset=utf-8");
			JSONObject json3=new JSONObject();
			json3.put("shippingrecord",shippingrecord);
			PrintWriter out=response.getWriter();
		    out.write(json.toString());
		    out.flush();
		    out.close();
			System.out.println("地址信息传递成功");
			return "MyCenter-Information";
		}else 
		{
			System.out.println("地址信息传递失败");
			return "deleteshipping";
		}
	}
	
	@RequestMapping(value="/searchshipping.do",method = RequestMethod.GET)
	public void searchshipping(HttpServletResponse response,HttpSession session) throws Exception {
		int intid = Integer.valueOf((String) session.getAttribute("shippingid")).intValue();
		MfbShipping shippingrecord=shippingserviceimpl.selectByPrimaryKey(intid);//search shipping
		if(shippingrecord!=null) 
		{
			response.setContentType("text/html;charset=utf-8");
			JSONObject json3=new JSONObject();
			json3.put("shippingrecord",shippingrecord);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
			System.out.println("地址查询成功");
		}else 
		{
			System.out.println("地址查询失败");
		}
	}
	
	@RequestMapping(value="/setshippingid.do",method = RequestMethod.GET)
	public void setshippingid(HttpSession session,@RequestParam String json,HttpServletResponse response) throws Exception 
	{
		String massage=null;
		JSONObject json2=JSONObject.parseObject(json);
		session.setAttribute("shippingid", json2.getString("shippingid"));
		System.out.println("地址id传递完毕"+json2.getString("shippingid"));
		massage="ok";
		JSONObject json3=new JSONObject();
		json3.put("massage",massage);
		PrintWriter out=response.getWriter();
	    out.write(json3.toString());
	    out.flush();
	    out.close();
	}
}
