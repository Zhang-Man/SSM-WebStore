package com.mfb.friday.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mfb.friday.mapper.MfbUserMapper;
import com.mfb.friday.pojo.MfbUser;
import com.mfb.friday.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private MfbUserMapper MfbUserMapper;
	
	public MfbUser SelectOne(MfbUser record) {
		return MfbUserMapper.SelectOne(record);
	}
		
	public int InsertOne(MfbUser record) {
		return MfbUserMapper.insertSelective(record);
	}

	public int updataByname(MfbUser record) {
		return MfbUserMapper.updateByUsernameSelective(record);
	}

	public List<MfbUser> selectAll() {
		return MfbUserMapper.selectAll();
	}

	public MfbUser selectOneByName(MfbUser record) {
		return MfbUserMapper.selectOneByName(record);
	}

	@Override
	public List<MfbUser> FindAll() {
		return MfbUserMapper.FindAll();
	}

	@Override
	public MfbUser selectByPrimaryKey(Integer id) {
		return MfbUserMapper.selectByPrimaryKey(id);
	}

	@Override
	public int insertSelective(MfbUser record) {
		return MfbUserMapper.insertSelective(record);
	}

	@Override
	public MfbUser SelectUserById(Integer id) {
		return MfbUserMapper.SelectUserById(id);
	}

	@Override
	public int updateByPrimaryKey(MfbUser record) {
		return MfbUserMapper.updateByPrimaryKey(record);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		return MfbUserMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(MfbUser record) {
		return MfbUserMapper.updateByPrimaryKeySelective(record);
	}
}
