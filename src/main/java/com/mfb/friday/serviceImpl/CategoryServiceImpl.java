package com.mfb.friday.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mfb.friday.pojo.MfbCategory;
import com.mfb.friday.service.CategoryService;
import com.mfb.friday.mapper.MfbCategoryMapper;;

@Service
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	private MfbCategoryMapper MfbCategoryMapper;
	
	public MfbCategory SelectOne(MfbCategory record) {
		return null;
	}

	public int InsertOne(MfbCategory record) {
		return 0;
	}

	public int updataByname(MfbCategory record) {
		return 0;
	}

	public List<MfbCategory> selectAll() {
		return MfbCategoryMapper.selectAll();
	}

	public List<MfbCategory> selectSelective(MfbCategory record) {
		return MfbCategoryMapper.selectSelective(record);
	}

	public MfbCategory selectByName(String name) {
		return MfbCategoryMapper.selectByName(name);
	}

}
