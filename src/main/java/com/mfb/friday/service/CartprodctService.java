package com.mfb.friday.service;

import java.util.List;

import com.mfb.friday.pojo.MfbCartproduct;

public interface CartprodctService 
{
	List<MfbCartproduct> selectByCartId(Integer id);
	
	int deleteByPrimaryKey(Integer id);
	
	int deleteBycartIdAndproductId(MfbCartproduct record);
	
	MfbCartproduct selectByCartIdAndProductId(MfbCartproduct record);
	
	int insertSelective(MfbCartproduct record);
}
