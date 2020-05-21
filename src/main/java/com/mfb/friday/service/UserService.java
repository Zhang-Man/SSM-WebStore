package com.mfb.friday.service;

import java.util.List;

import com.mfb.friday.pojo.MfbUser;

public interface UserService {
	public MfbUser SelectOne(MfbUser record);
	MfbUser selectOneByName(MfbUser record);
	public int InsertOne(MfbUser record);
	int updataByname(MfbUser record);
	List<MfbUser> selectAll();
	public List<MfbUser> FindAll(); //查询所有用户
	public MfbUser selectByPrimaryKey(Integer id);
	public int insertSelective(MfbUser record);
	MfbUser SelectUserById(Integer id);
	int updateByPrimaryKey(MfbUser record);//更新用户
	int updateByPrimaryKeySelective(MfbUser record);
	int deleteByPrimaryKey(Integer id);//删除用户
}
