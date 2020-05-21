package com.mfb.friday.mapper;

import com.mfb.friday.pojo.MfbOrdergoods;
import com.mfb.friday.pojo.MfbOrdergoodsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MfbOrdergoodsMapper {
    int countByExample(MfbOrdergoodsExample example);

    int deleteByExample(MfbOrdergoodsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MfbOrdergoods record);

    int insertSelective(MfbOrdergoods record);
    
    int insertSelectiveByList(List<MfbOrdergoods> record);

    List<MfbOrdergoods> selectByExample(MfbOrdergoodsExample example);

    MfbOrdergoods selectByPrimaryKey(Integer id);
    
    List<MfbOrdergoods> selectByorderId(Integer id);

    int updateByExampleSelective(@Param("record") MfbOrdergoods record, @Param("example") MfbOrdergoodsExample example);

    int updateByExample(@Param("record") MfbOrdergoods record, @Param("example") MfbOrdergoodsExample example);

    int updateByPrimaryKeySelective(MfbOrdergoods record);

    int updateByPrimaryKey(MfbOrdergoods record);
}