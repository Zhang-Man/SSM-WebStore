package com.mfb.friday.mapper;

import com.mfb.friday.pojo.MfbCategory;
import com.mfb.friday.pojo.MfbCategoryExample;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MfbCategoryMapper {
    int countByExample(MfbCategoryExample example);

    int deleteByExample(MfbCategoryExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MfbCategory record);

    int insertSelective(MfbCategory record);

    List<MfbCategory> selectByExample(MfbCategoryExample example);

    MfbCategory selectByPrimaryKey(Integer id);
    
    List<MfbCategory> selectAll();
    
   MfbCategory selectByName(String name);
    
    List<MfbCategory> selectSelective(MfbCategory record);

    int updateByExampleSelective(@Param("record") MfbCategory record, @Param("example") MfbCategoryExample example);

    int updateByExample(@Param("record") MfbCategory record, @Param("example") MfbCategoryExample example);

    int updateByPrimaryKeySelective(MfbCategory record);

    int updateByPrimaryKey(MfbCategory record);
}