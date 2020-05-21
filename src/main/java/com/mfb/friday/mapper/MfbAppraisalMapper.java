package com.mfb.friday.mapper;

import com.mfb.friday.pojo.MfbAppraisal;
import com.mfb.friday.pojo.MfbAppraisalExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MfbAppraisalMapper {
    int countByExample(MfbAppraisalExample example);

    int deleteByExample(MfbAppraisalExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MfbAppraisal record);

    int insertSelective(MfbAppraisal record);

    List<MfbAppraisal> selectByExample(MfbAppraisalExample example);

    MfbAppraisal selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") MfbAppraisal record, @Param("example") MfbAppraisalExample example);

    int updateByExample(@Param("record") MfbAppraisal record, @Param("example") MfbAppraisalExample example);

    int updateByPrimaryKeySelective(MfbAppraisal record);

    int updateByPrimaryKey(MfbAppraisal record);
}