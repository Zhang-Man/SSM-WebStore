package com.mfb.friday.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mfb.friday.mapper.MfbOrderMapper;
import com.mfb.friday.pojo.MfbOrder;
import com.mfb.friday.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private MfbOrderMapper mfbordermapper;
	
	public List<MfbOrder> selectByUserId(Integer id) {
		return mfbordermapper.selectByUserId(id);
	}

	public int insertSelective(MfbOrder record) {
		return mfbordermapper.insertSelective(record);
	}

	public MfbOrder selectByOrderId(Integer id) {
		return mfbordermapper.selectByOrderId(id);
	}
	@Override
	public List<MfbOrder> selectAllOrder() {
		
		return mfbordermapper.selectAllOrder();
	}

	@Override
	public MfbOrder selectByPrimaryKey(Integer id) {
		return mfbordermapper.selectByPrimaryKey(id);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return mfbordermapper.deleteByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(MfbOrder record) {
		return mfbordermapper.updateByPrimaryKeySelective(record);
	}
}
