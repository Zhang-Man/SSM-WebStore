package com.mfb.friday.mapper;

import com.mfb.friday.pojo.MfbCart;
import com.mfb.friday.pojo.MfbCartExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MfbCartMapper {
    int countByExample(MfbCartExample example);

    int deleteByExample(MfbCartExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MfbCart record);

    int insertSelective(MfbCart record);

    List<MfbCart> selectByExample(MfbCartExample example);

    MfbCart selectByPrimaryKey(Integer id);
    
    MfbCart selectByUserId(@Param("userId") Integer userId);

    int updateByExampleSelective(@Param("record") MfbCart record, @Param("example") MfbCartExample example);

    int updateByExample(@Param("record") MfbCart record, @Param("example") MfbCartExample example);

    int updateByPrimaryKeySelective(MfbCart record);

    int updateByPrimaryKey(MfbCart record);
}