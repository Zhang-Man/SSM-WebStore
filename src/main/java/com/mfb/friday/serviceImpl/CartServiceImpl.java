package com.mfb.friday.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mfb.friday.mapper.MfbCartMapper;
import com.mfb.friday.pojo.MfbCart;
import com.mfb.friday.service.CartService;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private MfbCartMapper mfbcartmapper;
	
	public int InsertOne(MfbCart record) {
		return mfbcartmapper.insertSelective(record);
	}

	public MfbCart selectByUserId(Integer id) {
		return mfbcartmapper.selectByUserId(id);
	}


}
