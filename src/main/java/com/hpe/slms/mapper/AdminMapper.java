package com.hpe.slms.mapper;

import com.hpe.slms.pojo.Admin;
import com.hpe.slms.pojo.Students;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);

    Admin Editperson(Admin admin);


}