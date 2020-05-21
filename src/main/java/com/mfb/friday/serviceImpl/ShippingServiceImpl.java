package com.mfb.friday.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mfb.friday.mapper.MfbShippingMapper;
import com.mfb.friday.pojo.MfbShipping;
import com.mfb.friday.service.ShippingService;

@Service
public class ShippingServiceImpl implements ShippingService {
	@Autowired
	private MfbShippingMapper mfbshippingmapper;
	
	public int InsertOne(MfbShipping record) {
		return mfbshippingmapper.insertSelective(record);
	}

	public MfbShipping selectOne(MfbShipping record) {
		return mfbshippingmapper.selectSelective(record);
	}

	public int updateByPrimaryKeySelective(MfbShipping record) {
		return mfbshippingmapper.updateByPrimaryKeySelective(record);
	}

	public MfbShipping selectOneByNmae(MfbShipping record) {
		return mfbshippingmapper.selectByName(record);
	}

	public MfbShipping selectSelective(MfbShipping record) {
		return mfbshippingmapper.selectSelective(record);
	}

	public int deleteByPrimaryKey(Integer id) {
		return mfbshippingmapper.deleteByPrimaryKey(id);
	}

	public List<MfbShipping> selectByUserId(Integer id) {
		return mfbshippingmapper.selectByUserId(id);
	}

	public MfbShipping selectByPrimaryKey(Integer id) {
		return mfbshippingmapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKey(MfbShipping record) {
		return mfbshippingmapper.updateByPrimaryKey(record);
	}

}
