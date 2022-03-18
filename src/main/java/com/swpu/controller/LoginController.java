package com.swpu.controller;

import com.swpu.pojo.Admin;
import com.swpu.pojo.Student;
import com.swpu.pojo.Teacher;
import com.swpu.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    LoginService loginService;
    /*
    * 学生登录
    * */
    @RequestMapping("/studentloginform")
    public String studentloginform(){

        return "login";
    }

    @RequestMapping("/studentlogin")
    @ResponseBody
    public HashMap<String,Object> studentLogin(Student student, HttpServletRequest request){
        HashMap<String,Object> map = new HashMap<>();
        String loginflag = loginService.studentLogin(student,request);
        map.put("info",loginflag);
        map.put("sno",student.getSno());
        return map;
    }
    /*
     * 教师登录
     * */
    @RequestMapping("/teacherlogin")
    @ResponseBody
    public HashMap<String,Object> teacherLogin(Teacher teacher, HttpServletRequest request){
        HashMap<String,Object> map = new HashMap<>();
        String loginflag = loginService.teacherLogin(teacher,request);
        map.put("info",loginflag);
        return map;
    }
    /*
     * 管理员登录
     * */
    @RequestMapping("/adminlogin")
    @ResponseBody
    public HashMap<String,Object> adminLogin(Admin admin, HttpServletRequest request){
        HashMap<String,Object> map = new HashMap<>();
        String loginflag = loginService.adminLogin(admin,request);
        map.put("info",loginflag);
        return map;
    }
}
