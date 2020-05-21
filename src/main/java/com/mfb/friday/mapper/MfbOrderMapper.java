package com.mfb.friday.mapper;

import com.mfb.friday.pojo.MfbOrder;
import com.mfb.friday.pojo.MfbOrderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MfbOrderMapper {
    int countByExample(MfbOrderExample example);

    int deleteByExample(MfbOrderExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MfbOrder record);

    int insertSelective(MfbOrder record);

    List<MfbOrder> selectByExample(MfbOrderExample example);

    MfbOrder selectByPrimaryKey(Integer id);
    
    List<MfbOrder> selectByUserId(Integer id);
    
    MfbOrder selectByOrderId(Integer id);

    int updateByExampleSelective(@Param("record") MfbOrder record, @Param("example") MfbOrderExample example);

    int updateByExample(@Param("record") MfbOrder record, @Param("example") MfbOrderExample example);

    int updateByPrimaryKeySelective(MfbOrder record);

    int updateByPrimaryKey(MfbOrder record);
    
    List<MfbOrder> selectAllOrder();
}