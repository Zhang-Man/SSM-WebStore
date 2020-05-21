package com.mfb.friday.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mfb.friday.mapper.MfbOrdergoodsMapper;
import com.mfb.friday.pojo.MfbOrdergoods;
import com.mfb.friday.service.OrdergoodsService;

@Service
public class OrdergoodsServiceImpl implements OrdergoodsService {

	@Autowired
	private MfbOrdergoodsMapper mfbordergoodsmapper;
	
	public int insertSelective(MfbOrdergoods record) {
		return mfbordergoodsmapper.insertSelective(record);
	}

	public List<MfbOrdergoods> selectByorderId(Integer id) {
		return mfbordergoodsmapper.selectByorderId(id);
	}

}
