package com.hpe.slms.service.impl;

import com.hpe.slms.mapper.TeachersMapper;
import com.hpe.slms.pojo.Teachers;
import com.hpe.slms.service.TeachersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TeachersServiceImpl implements TeachersService {
    @Autowired
    TeachersMapper teachersMapper;
    @Override
    public Teachers getTeachers(String username, String password) {
        Teachers teachers=new Teachers();
        teachers.setTname(username);
        teachers.setPassword(password);

        return  teachersMapper.getTeachers(teachers);
    }
}
