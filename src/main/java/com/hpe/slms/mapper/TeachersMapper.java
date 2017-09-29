package com.hpe.slms.mapper;

import com.hpe.slms.pojo.Students;
import com.hpe.slms.pojo.Teachers;

public interface TeachersMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Teachers record);

    int insertSelective(Teachers record);

    Teachers selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Teachers record);

    int updateByPrimaryKey(Teachers record);

    Teachers getTeachers(Teachers Teachers);

}