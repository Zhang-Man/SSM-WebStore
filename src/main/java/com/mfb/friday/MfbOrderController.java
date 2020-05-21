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

import com.mfb.friday.pojo.MfbOrder;
import com.mfb.friday.service.OrderService;
import com.mfb.friday.utils.ServerResponse;

@Controller
public class MfbOrderController {
	@Autowired
	private OrderService orderService;
	
	
	@RequestMapping(value="/successOrder.do")
	public String ToOrderInfo(Model model) {
		List<MfbOrder> MfbOrderList=orderService.selectAllOrder();
		System.out.println(MfbOrderList.size());
		model.addAttribute("MfbOrderList", MfbOrderList);
		return "OrderInfo";
	}
	@RequestMapping(value="/detailOrder.do")
	public String ToSelectOneOrder(Integer id,Model model) {
		MfbOrder mfbOrder=orderService.selectByPrimaryKey(id);
		if(mfbOrder!=null) {
			model.addAttribute("mfbOrder", mfbOrder);
		}
		return "OrderDetail";
		
	}
	@RequestMapping(value="/deleteOrder.do")
	public String TOdeleteOrder(Integer id) {
		int idx=orderService.deleteByPrimaryKey(id);
		System.out.println(idx);
		return "OrderInfo";
	}
	
	
	@SuppressWarnings("unused")
	@RequestMapping(value="/updateOrder.do", method = RequestMethod.POST)
	public @ResponseBody ServerResponse<MfbOrder> doUpdateOrder(@RequestBody MfbOrder order,
			HttpSession sess) {
		Integer influence = orderService.updateByPrimaryKeySelective(order);
		if(influence!=null) {
		ServerResponse<MfbOrder> serverResponse = ServerResponse.createBySuccess("successful", order);
		return serverResponse;
	}else {
		ServerResponse<MfbOrder> ServerResponse = com.mfb.friday.utils.ServerResponse.createByErrorMessage("error");
		return ServerResponse;
	}
		}
}
