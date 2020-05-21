package com.mfb.friday.service;

import java.util.List;

import com.mfb.friday.pojo.MfbShipping;

public interface ShippingService 
{
	MfbShipping selectOne(MfbShipping record);
	MfbShipping selectSelective(MfbShipping record);
	MfbShipping selectOneByNmae(MfbShipping record);
	MfbShipping selectByPrimaryKey(Integer id);
	List<MfbShipping> selectByUserId(Integer id);
	public int InsertOne(MfbShipping record);
	int updateByPrimaryKeySelective(MfbShipping record);
	int updateByPrimaryKey(MfbShipping record);
	int deleteByPrimaryKey(Integer id);
}
