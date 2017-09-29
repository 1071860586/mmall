package com.hpe.slms.controller;

import com.hpe.slms.pojo.Students;
import com.hpe.slms.pojo.Teachers;
import com.hpe.slms.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import javax.ws.rs.POST;
import java.util.ArrayList;
import java.util.List;

@Controller
public class StudentController {

@Autowired
    StudentService studentService;
@RequestMapping(value = "num",method= RequestMethod.POST)
@ResponseBody
public String getSizeStudents(HttpSession session) {
   Teachers teachers= (Teachers) session.getAttribute("user");
   String clzname=teachers.getClzname();
List<Students> list=studentService.getallStudent(clzname);


    System.out.print(list);
return String.valueOf(list.size());

}
    @RequestMapping(value = "getlist",method= RequestMethod.POST)
    @ResponseBody
    public List<Students> getAllStudents(HttpSession session) {
        Teachers teachers= (Teachers) session.getAttribute("user");
        String clzname=teachers.getClzname();
        List<Students> list=studentService.getallStudent(clzname);
        session.setAttribute("studentAll",list);

        return list;

    }

    @RequestMapping(value = "delete",method= RequestMethod.POST)
    @ResponseBody
    public  String deleteStudent(HttpSession session,int id) {
        List<Students> list= (List<Students>) session.getAttribute("studentAll");
        List<Students> list1=new ArrayList<>();
        for (Students students:list){
           if (students.getId()==id){

           }
           list1.add(students);
        }
        session.setAttribute("studentAll",list1);
        return String.valueOf( studentService.deleteStudent(id));



    }

    @RequestMapping(value = "selectStudent",method= RequestMethod.POST)
    @ResponseBody
    public  List<Students> selectStudent(String sname) {

     List<Students>   list=studentService.getSelectStudent(sname);
     System.out.print("======++++++++++"+list);
        return list;



    }
    @RequestMapping(value = "totalnum",method= RequestMethod.POST)
    @ResponseBody
    public  int getTotalNum(HttpSession session) {
        Teachers teachers = (Teachers) session.getAttribute("user");
        String clzname = teachers.getClzname();
        List<Students> list = studentService.getScores(clzname);

        return list.size();
    }
    @RequestMapping(value="getScores",method= RequestMethod.POST)
    @ResponseBody
    public  List<Students> getScores(HttpSession session) {
        Teachers teachers= (Teachers) session.getAttribute("user");
        String clzname=teachers.getClzname();
        List<Students> list=studentService.getScores(clzname);
        System.out.print("这是控制层输出的数量"+list.size());
        System.out.print(list);
        return list;



    }




}


