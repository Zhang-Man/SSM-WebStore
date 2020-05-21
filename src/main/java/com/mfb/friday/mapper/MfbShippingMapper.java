package com.mfb.friday.mapper;

import com.mfb.friday.pojo.MfbShipping;
import com.mfb.friday.pojo.MfbShippingExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MfbShippingMapper {
    int countByExample(MfbShippingExample example);

    int deleteByExample(MfbShippingExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MfbShipping record);

    int insertSelective(MfbShipping record);

    List<MfbShipping> selectByExample(MfbShippingExample example);

    MfbShipping selectByPrimaryKey(Integer id);
    
    List<MfbShipping> selectByUserId(Integer id);
    
    MfbShipping selectSelective(MfbShipping record);
    
    MfbShipping selectByName(MfbShipping record);

    int updateByExampleSelective(@Param("record") MfbShipping record, @Param("example") MfbShippingExample example);

    int updateByExample(@Param("record") MfbShipping record, @Param("example") MfbShippingExample example);

    int updateByPrimaryKeySelective(MfbShipping record);

    int updateByPrimaryKey(MfbShipping record);
}