package com.swpu.dao;

import com.swpu.pojo.Admin;
import com.swpu.pojo.Student;
import com.swpu.pojo.Teacher;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

/*
* 登陆的Dao操作
* */
@Mapper
public interface LoginDao {
    //学生登录
    @Select("select * from student_login where sno=#{sno} and spwd=#{spwd}")
    Student studentLogin(Student student);
    //教师登录
    @Select("select * from teacher_login where tno=#{tno} and tpwd=#{tpwd}")
    Teacher teacherLogin(Teacher teacher);
    //管理员登录
    @Select("select * from admin_login where adminno=#{adminno} and adminpwd=#{adminpwd}")
    Admin adminLogin(Admin admin);
    //得到学生salt
    @Select("select salt from student_login where sno=#{sno}")
    String getStudentSalt(Student student);
    //得到教师salt
    @Select("select salt from teacher_login where tno=#{tno}")
    String getteacherSalt(Teacher teacher);
    //得到管理员salt
    @Select("select salt from admin_login where adminno=#{adminno}")
    String getAdminSalt(Admin admin);
}
