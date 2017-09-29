package com.hpe.slms.service.impl;

import com.hpe.slms.mapper.StudentsMapper;
import com.hpe.slms.pojo.Students;
import com.hpe.slms.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpSession;
import java.util.List;
@Repository
public class StudentServiceImpl implements StudentService {
    @Autowired
    StudentsMapper studentsMapper;
    @Override
    public List<Students> getallStudent(String clzname) {

        return studentsMapper.getallStudent(clzname);
    }

    @Override
    public int deleteStudent(int id) {

        return  studentsMapper.deleteByPrimaryKey(id);
    }

    @Override
    public List<Students> getSelectStudent(String sname) {

        return studentsMapper.getSelectStudent(sname);
    }

    @Override
    public List<Students> getScores(String clzname) {
        System.out.print("这是实现类中的数量"+studentsMapper.getScores(clzname).size());
        System.out.print("这是实现类中list的数量"+studentsMapper.getScores(clzname).get(0).scores.size());
        return studentsMapper.getScores(clzname);
    }

    @Override
    public List<Students> getAdminStudent() {
        return studentsMapper.adminSelectStudent();
    }


}
