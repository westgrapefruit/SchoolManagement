package com.swpu.service;

import com.swpu.pojo.Course;
import com.swpu.pojo.Student;
import com.swpu.pojo.Teacher;
import com.swpu.pojo.TeacherCourse;
import org.springframework.stereotype.Service;

import java.util.HashMap;


public interface UserService {
    /*
    * 增加学生和教师
    * */
    HashMap<String,Object> addStudent(Student student);
    HashMap<String,Object> addTeacher(Teacher teacher);
    /*
     * 删除学生和教师
     * */
    HashMap<String,Object> delStudent(Student student);
    HashMap<String,Object> delTeacher(Teacher teacher);
    /*
     * 更新学生和教师信息
     * */
    HashMap<String,Object> updTeacher(Teacher teacher);
    HashMap<String,Object> updStudent(Student student);
    /*
     * 查询所有的学生和教师信息
     * */
    HashMap<String,Object> selTeachers(Teacher teacher);
    HashMap<String,Object> selStudents(Student student);
    /*
     * 根据条件查询所有的学生和教师信息
     * */
    HashMap<String, Object> selStudentByCon(Student student);
    HashMap<String, Object> selTeacherByCon(Teacher teacher);
    /*
     * 增加教师所教课程
     * */
    HashMap<String,Object> addTeacherCourse(TeacherCourse teacherCourse);
}
