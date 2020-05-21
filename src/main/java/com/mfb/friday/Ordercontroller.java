package com.mfb.friday;

import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.mfb.friday.pojo.MfbGoods;
import com.mfb.friday.pojo.MfbOrder;
import com.mfb.friday.pojo.MfbOrdergoods;
import com.mfb.friday.pojo.MfbUser;
import com.mfb.friday.serviceImpl.GoodsServiceImpl;
import com.mfb.friday.serviceImpl.OrderServiceImpl;
import com.mfb.friday.serviceImpl.OrdergoodsServiceImpl;
import com.mfb.friday.serviceImpl.UserServiceImpl;

@Controller
public class Ordercontroller {
	
	@Autowired
	private UserServiceImpl userserviceimpl;
	@Autowired
	private OrderServiceImpl orderserviceimpl;
	@Autowired
	private OrdergoodsServiceImpl ordergoodsserviceimpl;
	@Autowired
	private GoodsServiceImpl goodsserviceimpl;
	
	@RequestMapping(value="/myorder.do",method = RequestMethod.GET)
	public void myorder(HttpSession session,HttpServletResponse response) throws Exception 
	{
		MfbUser mfbuser=(MfbUser) session.getAttribute("user");
		mfbuser=userserviceimpl.selectOneByName(mfbuser);//get user
		List<MfbOrder> listorder=orderserviceimpl.selectByUserId(mfbuser.getId());//get order
		
		List<Integer> listorderid=new ArrayList<Integer>();
		List<List<MfbGoods>> listAllgoods=new ArrayList<List<MfbGoods>>();
		List<BigDecimal> listtotalprice=new ArrayList<BigDecimal>();
		
		if(listorder!=null) 
		{
			for(MfbOrder order:listorder) 
			{
				listorderid.add(order.getOrderId());//get orderId
				
				List<MfbOrdergoods> listordergoods=ordergoodsserviceimpl.selectByorderId(order.getId());//get ordergoods
				if(listordergoods!=null) 
				{
					int i=0;
					List<MfbGoods> listgoods=new ArrayList<MfbGoods>();
					BigDecimal orderprice = new BigDecimal(0);
					for(MfbOrdergoods ordergoods:listordergoods) 
					{
						MfbGoods mfbgoods=goodsserviceimpl.selectByPrimaryKey(ordergoods.getGoodsId());//get goods
						listgoods.add(mfbgoods);//get goods
						orderprice = orderprice.add(mfbgoods.getPrice());//get price
					}
					listAllgoods.add(i, listgoods);;//get listgoods
					i++;
					listtotalprice.add(orderprice);//get orderprice
				}else 
				{
					System.out.println("订单内没有商品");
				}
			}
			response.setContentType("text/html;charset=utf-8");
			JSONObject json3=new JSONObject();
			json3.put("listorderid",listorderid);
			json3.put("listtotalprice",listtotalprice);
			json3.put("listAllgoods",listAllgoods);
//			json3.put("listorder",listorder);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
		    System.out.println("订单信息查询成功");
		}else 
		{
			System.out.println("订单列表查询失败");
		}
	}
	
	@SuppressWarnings("unused")
	@RequestMapping(value="/createorderBygoods.do",method = RequestMethod.GET)
	public String createorderBygoods(HttpSession session,HttpServletResponse response,@RequestParam String add,@RequestParam String goodsid) throws Exception 
	{
		//json have goodsid shippingid
		System.out.println("地址"+add);
		System.out.println("商品id"+goodsid);
		String massage=null;
		JSONObject json3=new JSONObject();
		MfbOrder mfborder=new MfbOrder();
		MfbUser mfbuser=(MfbUser) session.getAttribute("user");
		mfbuser=userserviceimpl.selectOneByName(mfbuser);//get user
		if(mfbuser==null) 
		{
			System.out.println("未登录 订单商品添加失败");
			massage="nosignin";
			json3.put("massage",massage);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
			return "deal_single";
		}
		int orderId = (int)(Math.random() * 100000);//get orderid
		int intgoodsid = Integer.parseInt(goodsid);
		MfbGoods mfbgoods=goodsserviceimpl.selectByPrimaryKey(intgoodsid);//get goods
		if(mfbgoods==null) 
		{
			System.out.println("商品查询失败 订单商品添加失败");
			massage="nogoods";
			json3.put("massage",massage);
			PrintWriter out=response.getWriter();
		    out.write(json3.toString());
		    out.flush();
		    out.close();
			return "deal_single";
		}
		Date date=new Date();
		mfborder.setAll(mfbuser.getId(), orderId, mfbgoods.getPrice(), 1, add, date, 
						date, 1, date, date, date, date);
		orderserviceimpl.insertSelective(mfborder);
		if(mfborder!=null) 
		{
			System.out.println("订单建立成功");
		}else 
		{
			return "deal_single";
		}
		//---------------------------------------------------------//
		MfbOrdergoods mfbordergoods=new MfbOrdergoods();
		MfbOrder orderrecord=orderserviceimpl.selectByOrderId(orderId);//get order
		mfbordergoods.setAll(orderrecord.getId(), mfbgoods.getId());//get ordergoods
		ordergoodsserviceimpl.insertSelective(mfbordergoods);
		if(mfborder!=null && mfbordergoods!=null) 
		{
			System.out.println("商品订单建立成功");
			return "index";
		}else 
		{
			System.out.println("商品订单建立失败");
			return "deal_single";
		}
	}
	
	@SuppressWarnings("unused")
	@RequestMapping(value="/createorderBycart.do",method = RequestMethod.GET)
	public String createorderBycart(HttpSession session,HttpServletResponse response,@RequestParam String json) throws Exception 
	{
		//json have goodsidlist shippingid totleprice
 		JSONObject json2=JSONObject.parseObject(json);
		MfbOrder mfborder=new MfbOrder();
		MfbUser mfbuser=(MfbUser) session.getAttribute("user");
		mfbuser=userserviceimpl.selectOneByName(mfbuser);//get user
		int orderId = (int)(Math.random() * 100000);//get orderid
		int inttotleprice = Integer.parseInt(json2.getString("totleprice"));
		BigDecimal bigDecimalinttotleprice = new BigDecimal(inttotleprice);
		Date date=new Date();
		mfborder.setAll(mfbuser.getId(), orderId, bigDecimalinttotleprice, 1, json2.getString("shippingid"), date, 
						date, 1, date, date, null, null);
		//---------------------------------------------------------//
		//获取jsonlist
		JSONArray array = json2.getJSONArray("goodsidlist");
		List<Integer> goodsidlist = new ArrayList<Integer>();

		for(int i = 0; i < array.size(); i++){
		    JSONObject object = (JSONObject) array.get(i);     //将array中的数据进行逐条转换
		    Integer goodsid = (Integer) JSONObject.toJavaObject(object, Integer.class);  //通过JSONObject.toBean()方法进行对象间的转换
		    goodsidlist.add(goodsid);//get goodsidlist
		}
		if(goodsidlist!=null) 
		{
		MfbOrdergoods mfbordergoods=new MfbOrdergoods();
			for(Integer id:goodsidlist) 
			{
				mfbordergoods.setAll(orderId, id);//insert all goods
				ordergoodsserviceimpl.insertSelective(mfbordergoods);
			}
			System.out.println("购物车商品订单成功");
			return "index";
		}else 
		{
			System.out.println("购物车商品订单失败");
			return "deal_single";
		}
	}
}
