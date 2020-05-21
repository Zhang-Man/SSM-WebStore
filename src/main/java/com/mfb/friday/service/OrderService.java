package com.mfb.friday.service;

import java.util.List;

import com.mfb.friday.pojo.MfbOrder;

public interface OrderService 
{
	List<MfbOrder> selectByUserId(Integer id);
	MfbOrder selectByOrderId(Integer id);
	int insertSelective(MfbOrder record);
	public List<MfbOrder> selectAllOrder();
	MfbOrder selectByPrimaryKey(Integer id);
	int deleteByPrimaryKey(Integer id);
	int updateByPrimaryKeySelective(MfbOrder record);
}
