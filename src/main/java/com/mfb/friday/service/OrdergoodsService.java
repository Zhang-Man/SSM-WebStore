package com.mfb.friday.service;

import java.util.List;

import com.mfb.friday.pojo.MfbOrdergoods;

public interface OrdergoodsService 
{
	int insertSelective(MfbOrdergoods record);
	
	List<MfbOrdergoods> selectByorderId(Integer id);
}
