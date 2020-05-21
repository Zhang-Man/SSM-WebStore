package com.mfb.friday.mapper;

import com.mfb.friday.pojo.MfbCartproduct;
import com.mfb.friday.pojo.MfbCartproductExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MfbCartproductMapper {
    int countByExample(MfbCartproductExample example);

    int deleteByExample(MfbCartproductExample example);

    int deleteByPrimaryKey(Integer id);
    
    int deleteBycartIdAndproductId(MfbCartproduct record);

    int insert(MfbCartproduct record);

    int insertSelective(MfbCartproduct record);

    List<MfbCartproduct> selectByExample(MfbCartproductExample example);

    MfbCartproduct selectByPrimaryKey(Integer id);
    
    MfbCartproduct selectByCartIdAndProductId(MfbCartproduct record);
    
    List<MfbCartproduct> selectByCartId(Integer id);

    int updateByExampleSelective(@Param("record") MfbCartproduct record, @Param("example") MfbCartproductExample example);

    int updateByExample(@Param("record") MfbCartproduct record, @Param("example") MfbCartproductExample example);

    int updateByPrimaryKeySelective(MfbCartproduct record);

    int updateByPrimaryKey(MfbCartproduct record);
}