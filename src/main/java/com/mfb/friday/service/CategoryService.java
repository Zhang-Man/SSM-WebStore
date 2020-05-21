package com.mfb.friday.service;

import java.util.List;

import com.mfb.friday.pojo.MfbCategory;

public interface CategoryService {
	MfbCategory SelectOne(MfbCategory record);
	public int InsertOne(MfbCategory record);
	int updataByname(MfbCategory record);
	List<MfbCategory> selectAll();
	MfbCategory selectByName(String name);
	List<MfbCategory> selectSelective(MfbCategory record);
}
