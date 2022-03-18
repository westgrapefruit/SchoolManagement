package com.swpu.service;

import com.swpu.pojo.Admin;
import com.swpu.pojo.Student;
import com.swpu.pojo.Teacher;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;


public interface LoginService {
    //学生登录
    String studentLogin(Student user, HttpServletRequest request);
    //教师登录
    String teacherLogin(Teacher user, HttpServletRequest request);
    //管理员登录
    String adminLogin(Admin user, HttpServletRequest request);

}
