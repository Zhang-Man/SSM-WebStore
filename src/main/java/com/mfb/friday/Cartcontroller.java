package com.mfb.friday;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSONObject;
import com.mfb.friday.pojo.MfbCart;
import com.mfb.friday.pojo.MfbCartproduct;
import com.mfb.friday.pojo.MfbGoods;
import com.mfb.friday.pojo.MfbUser;
import com.mfb.friday.serviceImpl.CartServiceImpl;
import com.mfb.friday.serviceImpl.CartproductServiceImpl;
import com.mfb.friday.serviceImpl.GoodsServiceImpl;
import com.mfb.friday.serviceImpl.UserServiceImpl;

@Controller                                                            
public class Cartcontroller 
{
	@Autowired
	private CartServiceImpl cartserviceimpl;
	@Autowired
	private CartproductServiceImpl cartproductserviceimpl;
	@Autowired
	private GoodsServiceImpl goodsserviceimpl;
	@Autowired
	private UserServiceImpl userserviceimpl;
	
	
	@RequestMapping("/cartsigninjudge.do")
	public void cartsigninjudge(HttpSession session,HttpServletResponse response) throws IOException { 
		String massage=null;
		JSONObject json3=new JSONObject();
		MfbUser mfbuser=(MfbUser) session.getAttribute("user");
		if(mfbuser!=null) 
		{
			massage="ok";
			json3.put("massage",massage);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
			System.out.println(mfbuser.getUsername()+"您已登陆");
			return ;
		}else 
		{
			massage="no";
			json3.put("massage",massage);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
		    System.out.println("未登录不能访问");
		    return ;
		}
	}
	
	@RequestMapping(value="/mycartgoods.do",method = RequestMethod.GET)
	public void mycartgoods(HttpSession session,HttpServletResponse response) throws Exception 
	{
		MfbUser userrecord=(MfbUser) session.getAttribute("user");//get user
		MfbUser mfbuser=userserviceimpl.selectOneByName(userrecord);
		MfbCart cartrecord=cartserviceimpl.selectByUserId(mfbuser.getId());//get cart
		List<MfbCartproduct> listcartproductrecord=cartproductserviceimpl.selectByCartId(cartrecord.getId());//get cartproduct
		if(listcartproductrecord!=null) //cart have goods
		{
			response.setContentType("text/html;charset=utf-8");
			List<MfbGoods> listgoods=new ArrayList<MfbGoods>();
			List<Integer> listcartproductid=new ArrayList<Integer>();
			MfbGoods goodsrecord=new MfbGoods();
			for(MfbCartproduct cart:listcartproductrecord) 
			{
				listcartproductid.add(cart.getId());//get cartproductid
				goodsrecord.setId(cart.getProductId());
				goodsrecord=goodsserviceimpl.selectByPrimaryKey(goodsrecord.getId());//get goods
				listgoods.add(goodsrecord);
			}
			JSONObject json=new JSONObject();
			json.put("listcartproductid",listcartproductid);
			json.put("listgoods",listgoods);
			PrintWriter out=response.getWriter();
		    out.write(json.toString());
		    out.flush();
		    out.close();
			System.out.println("购物车商品查询成功");
		}else 
		{
			System.out.println("购物车没有商品");
		}
	}
	
	
	@SuppressWarnings("unused")
	@RequestMapping(value="/insertcartgoods.do",method = RequestMethod.GET)
	public void insertcartgoods(HttpSession session,HttpServletResponse response,@RequestParam String json) throws Exception 
	{
		String massage=null;
		JSONObject json3=new JSONObject();
		MfbUser userrecord=(MfbUser) session.getAttribute("user");
		MfbUser mfbuser=userserviceimpl.selectOneByName(userrecord);//get user
		if(mfbuser==null) 
		{
			System.out.println("未登录 购物车商品添加失败");
			massage="nosignin";
			json3.put("massage",massage);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
			return;
		}
		
		JSONObject json2=JSONObject.parseObject(json);
		MfbCart cartrecord=cartserviceimpl.selectByUserId(mfbuser.getId());//get cart
		if(cartrecord==null) 
		{
			System.out.println("购物车查询失败 购物车商品添加失败");
			massage="nocart";
			json3.put("massage",massage);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
			return;
		}
		int intproductId = Integer.valueOf(json2.getString("goodsid")).intValue();//get productId
		MfbCartproduct mfbcartproduct=new MfbCartproduct();
		mfbcartproduct.setCartId(cartrecord.getId());
		mfbcartproduct.setProductId(intproductId);
		if(mfbcartproduct==null) 
		{
			massage="insertloss";
			json3.put("massage",massage);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
			System.out.println("购物车商品添加失败");
		}else 
		{
			massage="insertwin";
			json3.put("massage",massage);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
			cartproductserviceimpl.insertSelective(mfbcartproduct);
			System.out.println("购物车商品添加成功");
		}
	}
	
	@SuppressWarnings("unused")
	@RequestMapping(value="/deletecartproduct.do",method = RequestMethod.POST)
	public String deletecartproduct(HttpSession session,@RequestParam String productid) throws Exception {
		System.out.println("正在删除");
		MfbUser userrecord=(MfbUser) session.getAttribute("user");//get user
		MfbUser mfbuser=userserviceimpl.selectOneByName(userrecord);
		MfbCart cartrecord=cartserviceimpl.selectByUserId(mfbuser.getId());//get cart
		int intproductId = Integer.valueOf(productid).intValue();
		MfbCartproduct mfbcartproduct=new MfbCartproduct();
		mfbcartproduct.setCartId(cartrecord.getId());
		mfbcartproduct.setProductId(intproductId);
		if(true) 
		{
			cartproductserviceimpl.deleteByPrimaryKey(intproductId);
			System.out.println("购物车商品删除成功");
			return "cart";
		}else 
		{
			System.out.println("购物车商品删除失败");
			return "cart";
		}
	}
	
}
