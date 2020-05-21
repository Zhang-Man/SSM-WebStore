package com.mfb.friday;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mfb.friday.pojo.MfbGoods;
import com.mfb.friday.service.GoodsService;
import com.mfb.friday.utils.ServerResponse;

@Controller
public class MfbGoodsController {
	@Autowired
	private GoodsService goodsService;
	
	@SuppressWarnings("unused")
	@RequestMapping(value="/addGoods.do", method = RequestMethod.POST)
	public @ResponseBody ServerResponse<MfbGoods> AddGoods(@RequestBody MfbGoods goods) {
		System.out.println(goods.getName());
		System.out.println(goods.getCategoryId());
		System.out.println(goods.getMainImage());
		Integer dbinfluence = goodsService.insertSelective(goods);
		ServerResponse<MfbGoods> serverResponse;
		if(dbinfluence!=null) {
			serverResponse=ServerResponse.createBySuccess("successful",goods);
		}else {
			serverResponse=ServerResponse.createByErrorMessage("error");
		}
		return serverResponse;
	}
	@RequestMapping(value="/detailGood.do")
	public String GoodsToSelectOneById(Integer id,Model model) {
		MfbGoods dbmfb=goodsService.selectByPrimaryKey(id);
		if(dbmfb!=null) {
			model.addAttribute("MfbGood", dbmfb);	
		}
		return "Goodsdetail";
	}
	@RequestMapping(value="/successProduct.do")
	public String ToGoodsInfo(Model model) {
		List<MfbGoods> MfbGoodList=goodsService.selectAllgoods();
		System.out.println(MfbGoodList.size());
		model.addAttribute("MfbGoodList", MfbGoodList);
		return "GoodsInfo";
	}
	
	@SuppressWarnings("unused")
	@RequestMapping(value="/deleteGoods.do")
	public  String doDelete(Integer id) {
		Integer influence = goodsService.deleteByPrimaryKey(id);
		return "adminindex.do";
	}
	@SuppressWarnings("unused")
	@RequestMapping(value="updateGoods", method = RequestMethod.POST)
	public @ResponseBody ServerResponse<MfbGoods> doUpdate(@RequestBody MfbGoods good,
			HttpSession sess) {
		Integer influence = goodsService.updateByPrimaryKeySelective(good);
		System.out.println(good.getDetail());
		if(influence!=null) {
		ServerResponse<MfbGoods> serverResponse = ServerResponse.createBySuccess("successful", good);
		return serverResponse;
	}else {
		ServerResponse<MfbGoods> ServerResponse = com.mfb.friday.utils.ServerResponse.createByErrorMessage("error");
		return ServerResponse;
	}
		}
}
