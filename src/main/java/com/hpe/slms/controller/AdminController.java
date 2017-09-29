package com.hpe.slms.controller;

import com.hpe.slms.pojo.Admin;
import com.hpe.slms.pojo.Students;
import com.hpe.slms.pojo.Teachers;
import com.hpe.slms.pojo.edit;
import com.hpe.slms.service.StudentService;
import com.hpe.slms.service.TeachersService;
import com.hpe.slms.service.adminservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.jms.Session;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.multi.MultiLabelUI;
import java.util.List;

@Controller
public class AdminController {
    @Autowired
    private adminservice adminservice;
    @Autowired
    private TeachersService teachersService;
    @Autowired
    StudentService studentService;
    @RequestMapping(value ="/edit",method = RequestMethod.POST)
    @ResponseBody
    public edit editAdmin(String username, String password,String type,HttpSession session){
        System.out.print(type);
       Admin admin= adminservice.editLogin(username,password,type);
      edit edit=null;
      System.out.print(admin);
      System.out.print("++++++++++++++++++++++++++++"+type);
      if(type.equals("1")||type.equals("2")) {
          if (admin != null) {

              edit = new edit(2, "登录成功");
              session.setAttribute("user", admin);

          } else {
              edit = new edit(1, "用户或密码错误");
          }
      }else {
Teachers teachers=teachersService.getTeachers(username,password);
          if (teachers != null) {

              edit = new edit(0, "登录成功");
              session.setAttribute("user", teachers);

          } else {
              edit = new edit(1, "用户或密码错误");
          }
      }
          return edit;
      }


    @RequestMapping(value="logout",method =RequestMethod.GET)
    public String logout(HttpSession session){
        session.removeAttribute("user");
        return "redirect:/login.jsp";
    }
    @RequestMapping(value="selectStudent",method =RequestMethod.GET)
    public String selectStudent(HttpSession session){

        return "redirect:/login.jsp";
    }

    @RequestMapping(value="adminGetlist",method =RequestMethod.POST)
    @ResponseBody
public List<Students> getAdminselect(){
       return  studentService.getAdminStudent();
    }

    @RequestMapping(value="adminNum",method =RequestMethod.POST)
    @ResponseBody
    public int getAdminSelectSize(){
        return  studentService.getAdminStudent().size();
    }
}
