package com.mfb.friday.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mfb.friday.mapper.MfbCartproductMapper;
import com.mfb.friday.pojo.MfbCartproduct;
import com.mfb.friday.service.CartprodctService;

@Service
public class CartproductServiceImpl implements CartprodctService {

	@Autowired
	private MfbCartproductMapper mfbcartproductmapper;
	
	public List<MfbCartproduct> selectByCartId(Integer id) {
		return mfbcartproductmapper.selectByCartId(id);
	}

	public int deleteByPrimaryKey(Integer id) {
		return mfbcartproductmapper.deleteByPrimaryKey(id);
	}

	public int deleteBycartIdAndproductId(MfbCartproduct record) {
		return mfbcartproductmapper.deleteBycartIdAndproductId(record);
	}

	public MfbCartproduct selectByCartIdAndProductId(MfbCartproduct record) {
		return mfbcartproductmapper.selectByCartIdAndProductId(record);
	}

	public int insertSelective(MfbCartproduct record) {
		return mfbcartproductmapper.insertSelective(record);
	}

}
