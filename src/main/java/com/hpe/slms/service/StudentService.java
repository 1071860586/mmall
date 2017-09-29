package com.hpe.slms.service;

import com.hpe.slms.pojo.Students;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public interface StudentService {
    public List<Students> getallStudent(String clzname);
    public int deleteStudent(int id);
    public List<Students> getSelectStudent(String sname);
    public List<Students> getScores(String clzname);
    public List<Students> getAdminStudent();

}
