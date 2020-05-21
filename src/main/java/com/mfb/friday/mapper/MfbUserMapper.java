package com.mfb.friday.mapper;

import com.mfb.friday.pojo.MfbUser;
import com.mfb.friday.pojo.MfbUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MfbUserMapper {
    int countByExample(MfbUserExample example);

    int deleteByExample(MfbUserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MfbUser record);

    int insertSelective(MfbUser record);

    List<MfbUser> selectByExample(MfbUserExample example);

    MfbUser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") MfbUser record, @Param("example") MfbUserExample example);

    int updateByExample(@Param("record") MfbUser record, @Param("example") MfbUserExample example);

    int updateByPrimaryKeySelective(MfbUser record);

    int updateByPrimaryKey(MfbUser record);
    int updateByUsernameSelective(MfbUser record);
    
    MfbUser SelectOne(MfbUser record);//用户名或电话登录
    
    MfbUser selectOneByName(MfbUser record);
    
    List<MfbUser> selectAll();
    
    List<MfbUser> FindAll(); //查询所有用户
    
    MfbUser SelectUserById(Integer id);//查询单个用户
    
//    MfbUser SelectOne(String username);
    
}