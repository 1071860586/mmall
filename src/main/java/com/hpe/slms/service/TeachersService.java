package com.hpe.slms.service;

import com.hpe.slms.pojo.Teachers;
import org.springframework.stereotype.Service;

@Service
public interface TeachersService {
    public Teachers getTeachers(String username,String password);
}
