package com.mfb.friday;

import java.io.PrintWriter;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import com.mfb.friday.pojo.MfbCartproduct;
import com.mfb.friday.pojo.MfbCategory;
import com.mfb.friday.pojo.MfbGoods;
import com.mfb.friday.pojo.MfbShipping;
import com.mfb.friday.pojo.MfbUser;
import com.mfb.friday.serviceImpl.CartServiceImpl;
import com.mfb.friday.serviceImpl.CartproductServiceImpl;
import com.mfb.friday.serviceImpl.CategoryServiceImpl;
import com.mfb.friday.serviceImpl.GoodsServiceImpl;

@Controller
public class Goodscontroller 
{
	@Autowired
	private GoodsServiceImpl goodsserviceimpl;
	@Autowired
	private CategoryServiceImpl categoryserviceimpl;
	@Autowired
	private CartproductServiceImpl cartproductserviceimpl;
	
	@RequestMapping(value="/searchAllgoods.do",method = RequestMethod.GET)
	public void searchAllgoods(HttpServletResponse response,HttpSession session) throws Exception {
		MfbCategory mfbcategory=categoryserviceimpl.selectByName((String) session.getAttribute("Categoryname"));//get category
		if(mfbcategory==null) {
			System.out.println("类别未知");
			return ;
		}
		MfbGoods goodsrecord=new MfbGoods();
		goodsrecord.setCategoryId(mfbcategory.getId());
//		goodsrecord.setSubtitle((String)session.getAttribute("Goodssubtitle"));
		List<MfbGoods> listgoods2=goodsserviceimpl.selectBycategoryId(goodsrecord);
		if(listgoods2!=null) 
		{
			List<MfbGoods> listgoods=new ArrayList();
			String subtitle=(String)session.getAttribute("Goodssubtitle");
			for(MfbGoods goods:listgoods2) 
			{
				if(goods.getSubtitle().contains(subtitle)) 
				{
					listgoods.add(goods);
				}
			}
			if(listgoods!=null) 
			{
				response.setContentType("text/html;charset=utf-8");
				JSONObject json3=new JSONObject();
				json3.put("listgoods",listgoods);
				json3.put("Categoryname",(String)session.getAttribute("Categoryname"));
	//			session.setAttribute("Categoryname", null);
	//			session.setAttribute("Goodssubtitle", null);
				PrintWriter out=response.getWriter();
			    out.write(json3.toString());
			    out.flush();
			    out.close();
				System.out.println("商品（页面）查询成功");
			}
		}else 
		{
			System.out.println("商品（页面）查询失败");
		}
	}
	

	@RequestMapping(value="/underindexsearchAllgoods.do",method = RequestMethod.GET)
	public void underindexsearchAllgoods(HttpServletResponse response) throws Exception {
		MfbCategory mfbcategory=categoryserviceimpl.selectByName("游戏");//get category
		if(mfbcategory==null) {
			System.out.println("类别未知");
			return ;
		}
		MfbGoods goodsrecord=new MfbGoods();
		goodsrecord.setCategoryId(mfbcategory.getId());
		List<MfbGoods> listgoods2=goodsserviceimpl.selectBycategoryId(goodsrecord);
		if(listgoods2!=null) 
		{
			List<MfbGoods> listgoods=new ArrayList<MfbGoods>();
			for(MfbGoods goods:listgoods2) 
			{
				BigDecimal bigprice=new BigDecimal(199);
				int flag = goods.getPrice().compareTo(bigprice);
				if(flag==1) 
				{
					listgoods.add(goods);
				}
			}
			if(listgoods!=null) 
			{
				response.setContentType("text/html;charset=utf-8");
				JSONObject json3=new JSONObject();
				json3.put("listgoods",listgoods);
				PrintWriter out=response.getWriter();
			    out.write(json3.toString());
			    out.flush();
			    out.close();
				System.out.println("商品（under页面）查询成功");
			}
		}else 
		{
			System.out.println("商品（under页面）查询失败");
		}
	}
	
	@RequestMapping(value="/searchgoods.do",method = RequestMethod.GET)
	public void searchgoods(HttpServletResponse response,HttpSession session) throws Exception {
		int intid = Integer.valueOf((String)session.getAttribute("goodsid")).intValue();
		MfbGoods mfbgoods=goodsserviceimpl.selectByPrimaryKey(intid);//get goods
		if(mfbgoods!=null) 
		{
			response.setContentType("text/html;charset=utf-8");
			JSONObject json3=new JSONObject();
			json3.put("mfbgoods",mfbgoods);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
			System.out.println("商品查询成功");
		}else 
		{
			System.out.println("商品查询失败");
		}
	}
	
	@SuppressWarnings("unused")
	@RequestMapping(value="/searchgoodsByName.do",method = RequestMethod.GET)
	public String searchgoodsByName(@RequestParam String goodsname,HttpSession session) throws Exception {
		MfbGoods mfbgoods=new MfbGoods();
		mfbgoods.setName(goodsname);
		mfbgoods=goodsserviceimpl.selectByName(mfbgoods);//get goods
		String str = Integer.toString(mfbgoods.getId());
		if(mfbgoods!=null) 
		{
			session.setAttribute("goodsid", str);
			System.out.println("商品查询成功");
			return "deal_single";
		}else 
		{
			System.out.println("商品查询失败");
			return "deal_single";
		}
	}
	
	
	@RequestMapping(value="/setCategorynameAndGoodssubtitle.do",method = RequestMethod.GET)
	public String setCategorynameAndGoodssubtitle(HttpSession session,@RequestParam String json) throws Exception 
	{
		JSONObject json2=JSONObject.parseObject(json);
		session.setAttribute("Categoryname", json2.getString("Categoryname"));
		session.setAttribute("Goodssubtitle", json2.getString("Goodssubtitle"));
		System.out.println("商品类别信息传递完毕");
		return "shipping_list";
	}
	
	@RequestMapping(value="/setGoodsid.do",method = RequestMethod.POST)
	public String setGoodsid(HttpSession session,@RequestParam String goodsid) throws Exception 
	{
		session.setAttribute("goodsid", goodsid);
		System.out.println("商品id传递完毕"+goodsid);
		return "deal_single";
	}
	
	@RequestMapping(value="/setGoodsidForOrder.do",method = RequestMethod.GET)
	public void setGoodsidForOrder(HttpSession session,HttpServletResponse response,@RequestParam String json) throws Exception 
	{
		String massage=null;
		JSONObject json3=new JSONObject();
		JSONObject json2=JSONObject.parseObject(json);
		int intgoodsid = Integer.parseInt(json2.getString("goodsid"));
		
		if(session.getAttribute("user")==null) 
		{
			System.out.println("未登录 商品id记忆失败");
			massage="no";
			json3.put("massage",massage);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
		    return ;
		}else 
		{
			session.setAttribute("goodsidForOrder", intgoodsid);
			System.out.println("商品id传递完毕"+intgoodsid);
			massage="ok";
			json3.put("massage",massage);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
		}
		
	}
	
	@RequestMapping(value="/setcartGoodsidForOrder.do",method = RequestMethod.POST)
	public String setcartGoodsidForOrder(HttpSession session,HttpServletResponse response,@RequestParam String productid) throws Exception 
	{
		int intgoodsid = Integer.parseInt(productid);
		session.setAttribute("goodsidForOrder", intgoodsid);
		System.out.println("购物车商品id传递完毕"+intgoodsid);
		return "checkout_payment";
	}

}
