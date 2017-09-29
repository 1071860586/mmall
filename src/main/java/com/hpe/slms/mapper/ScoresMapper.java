package com.hpe.slms.mapper;

import com.hpe.slms.pojo.Scores;
import com.hpe.slms.pojo.ScoresExample;
import com.hpe.slms.pojo.Students;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ScoresMapper {
    long countByExample(ScoresExample example);

    int deleteByExample(ScoresExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Scores record);

    int insertSelective(Scores record);

    List<Scores> selectByExample(ScoresExample example);

    Scores selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Scores record, @Param("example") ScoresExample example);

    int updateByExample(@Param("record") Scores record, @Param("example") ScoresExample example);

    int updateByPrimaryKeySelective(Scores record);

    int updateByPrimaryKey(Scores record);
    List<Scores> changePhoto(int stuid);
}