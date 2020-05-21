package com.mfb.friday.service;

import com.mfb.friday.pojo.MfbCart;

public interface CartService 
{
	public int InsertOne(MfbCart record);
	MfbCart selectByUserId(Integer id);
}
