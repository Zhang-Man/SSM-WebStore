package com.mfb.friday.mapper;

import com.mfb.friday.pojo.MfbGoods;
import com.mfb.friday.pojo.MfbGoodsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MfbGoodsMapper {
    int countByExample(MfbGoodsExample example);

    int deleteByExample(MfbGoodsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MfbGoods record);

    int insertSelective(MfbGoods record);

    List<MfbGoods> selectByExampleWithBLOBs(MfbGoodsExample example);

    List<MfbGoods> selectByExample(MfbGoodsExample example);
    
    List<MfbGoods> selectSelective(MfbGoods record);
    
    List<MfbGoods> selectBycategoryId(MfbGoods record);
    
    List<MfbGoods> selectBycategortIdAndSubtitle(MfbGoods record);

    MfbGoods selectByPrimaryKey(Integer id);
    
    MfbGoods selectByName(MfbGoods record);

    int updateByExampleSelective(@Param("record") MfbGoods record, @Param("example") MfbGoodsExample example);

    int updateByExampleWithBLOBs(@Param("record") MfbGoods record, @Param("example") MfbGoodsExample example);

    int updateByExample(@Param("record") MfbGoods record, @Param("example") MfbGoodsExample example);

    int updateByPrimaryKeySelective(MfbGoods record);

    int updateByPrimaryKeyWithBLOBs(MfbGoods record);

    int updateByPrimaryKey(MfbGoods record);
    
    List<MfbGoods> selectAllgoods();
}