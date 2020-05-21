package com.mfb.friday.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mfb.friday.mapper.MfbGoodsMapper;
import com.mfb.friday.pojo.MfbGoods;
import com.mfb.friday.service.GoodsService;

@Service
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	private MfbGoodsMapper mfbgoodsmapper;
	
	public List<MfbGoods> selectSelective(MfbGoods record) {
		return mfbgoodsmapper.selectSelective(record);
	}

	public MfbGoods selectByPrimaryKey(Integer id) {
		return mfbgoodsmapper.selectByPrimaryKey(id);
	}

	public List<MfbGoods> selectBycategortIdAndSubtitle(MfbGoods record) {
		return mfbgoodsmapper.selectBycategortIdAndSubtitle(record);
	}

	public int insertSelective(MfbGoods record) {
		return mfbgoodsmapper.insertSelective(record);
	}

	public List<MfbGoods> selectBycategoryId(MfbGoods record) {
		return mfbgoodsmapper.selectBycategoryId(record);
	}


	@Override
	public int deleteByPrimaryKey(Integer id) {
		return mfbgoodsmapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<MfbGoods> selectAllgoods() {
		List<MfbGoods> MfbGoodList=mfbgoodsmapper.selectAllgoods();
		return MfbGoodList;
	}

	@Override
	public int updateByPrimaryKeySelective(MfbGoods record) {
		return mfbgoodsmapper.updateByPrimaryKey(record);
	}

	public MfbGoods selectByName(MfbGoods record) {
		return mfbgoodsmapper.selectByName(record);
	}
}
