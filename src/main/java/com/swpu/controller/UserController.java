package com.swpu.controller;

import com.swpu.pojo.Student;
import com.swpu.pojo.Teacher;
import com.swpu.pojo.TeacherCourse;
import com.swpu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("/addstudent")
    @ResponseBody
    public HashMap<String,Object> addStudent(Student student){
        return userService.addStudent(student);
    }
    @RequestMapping("/addteachercourse")
    @ResponseBody
    public HashMap<String,Object> addTeacherCourse(TeacherCourse teacherCourse){
        return userService.addTeacherCourse(teacherCourse);
    }
    @RequestMapping("/addteacher")
    @ResponseBody
    public HashMap<String,Object> addTeacher(Teacher teacher){
        return userService.addTeacher(teacher);
    }
    @RequestMapping("/delteacher")
    @ResponseBody
    public HashMap<String,Object> delTeacher(Teacher teacher){
        return userService.delTeacher(teacher);
    }
    @RequestMapping("/delstudent")
    @ResponseBody
    public HashMap<String,Object> delStudent(Student student){
        return userService.delStudent(student);
    }
    @RequestMapping("/updstudent")
    @ResponseBody
    public HashMap<String,Object> updStudent(Student student){
        return userService.updStudent(student);
    }
    @RequestMapping("/updteacher")
    @ResponseBody
    public HashMap<String,Object> updTeacher(Teacher teacher){
        return userService.updTeacher(teacher);
    }
    @RequestMapping("/selteachers")
    @ResponseBody
    public HashMap<String,Object> selTeachers(Teacher teacher){
        return userService.selTeachers(teacher);
    }
    @RequestMapping("/selstudents")
    @ResponseBody
    public HashMap<String,Object> selStudents(Student student){
        return userService.selStudents(student);
    }
    @RequestMapping("/selstudentbycon")
    @ResponseBody
    public HashMap<String,Object> selStudentByCon(Student student){
        return userService.selStudentByCon(student);
    }
    @RequestMapping("/selteacherbycon")
    @ResponseBody
    public HashMap<String,Object> selTeacherByCon(Teacher teacher){
        return userService.selTeacherByCon(teacher);
    }

/*查询的测试代码
@RequestMapping("/seltest")
    public  String selTest(ModelMap modelMap){
        Teacher teacher = new Teacher();
        teacher.setConValue("1");
        teacher.setCondition("编号");
        teacher.setTno("19990004");
teacher.setTname("王森勋");
        HashMap<String,Object> map =  userService.selTeacherByCon(teacher);
        modelMap.put("info",map);
        return "list";
    }
    */
}
