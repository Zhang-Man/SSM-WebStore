package com.mfb.friday.service;

import java.util.List;

import com.mfb.friday.pojo.MfbGoods;

public interface GoodsService 
{
	List<MfbGoods> selectSelective(MfbGoods record);
	List<MfbGoods> selectBycategortIdAndSubtitle(MfbGoods record);
	List<MfbGoods> selectBycategoryId(MfbGoods record);
    MfbGoods selectByPrimaryKey(Integer id);
    MfbGoods selectByName(MfbGoods record);
	int insertSelective(MfbGoods record);
	int deleteByPrimaryKey(Integer id);
	List<MfbGoods> selectAllgoods();
	int updateByPrimaryKeySelective(MfbGoods record);
}
