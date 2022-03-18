package com.swpu.dao;

import com.swpu.pojo.Admin;
import com.swpu.pojo.Student;
import com.swpu.pojo.Teacher;
import com.swpu.pojo.TeacherCourse;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface UserDao {
    //增加学生
    @Insert("insert into student (college,grade,classno,sno,name,sex,pnum,mail,major)values(#{college},#{grade},#{classno},#{sno},#{name},#{sex},#{pnum},#{mail},#{major})")
    int addStudent(Student student);
    //增加学生登陆表数据
    @Insert("insert into student_login (sno,name,spwd,salt)values(#{sno},#{name},#{spwd},#{salt})")
    int addStudentlogin(Student student);
    //增加教师
    @Insert("insert into teacher (tno,tname,tsex,title,college,education,mail,pnum,remarks)values(#{tno},#{tname},#{tsex},#{title},#{college},#{education},#{mail},#{pnum},#{remarks})")
    int addTeacher(Teacher teacher);
    //增加教师登陆表数据
    @Insert("insert into teacher_login (tno,tname,tpwd,salt)values(#{tno},#{tname},#{tpwd},#{salt})")
    int addTeacherlogin(Teacher teacher);
    //删除学生
    @Delete("delete from student where sno=#{sno}")
    int delStudent(Student student);
    //删除学生登陆表信息
    @Delete("delete from student_login where sno=#{sno}")
    int delStudentlogin(Student student);
    //删除教师
    @Delete("delete from teacher where tno=#{tno}")
    int delTeacher(Teacher teacher);
    //删除教师登陆表信息
    @Delete("delete from teacher_login where tno=#{tno}")
    int delTeacherlogin(Teacher teacher);
    //修改学生信息
    @Update("update student SET college=#{college},grade=#{grade},classno=#{classno},sno=#{sno},name=#{name},sex=#{sex},pnum=#{pnum},mail=#{mail},major=#{major} where sno=#{sno}")
    int updateStudent(Student student);
    //修改教师信息
    @Update("update teacher SET tname=#{tname},tsex=#{tsex},title=#{title},college=#{college},education=#{education},mail=#{mail},pnum=#{pnum},remarks=#{remarks} where tno=#{tno}")
    int updateTeacher(Teacher teacher);
    //根据条件查询学生的所有信息
    @Select("select * from student where sno=#{conValue} or name=#{conValue} ")
    List<Student> selectStudentByCon(Student student);
    //根据学号查询学生的所有信息
    @Select("select * from student where sno=#{sno}")
    List<Student> selectStudentBySno(Student student);
    //根据工号查询教师的所有信息
    @Select("select * from teacher where tno=#{tno}")
    List<Teacher> selectTeacherByTno(Teacher teacher);
    //查询所有学生
    @Select("select * from student")
    List<Student> selectStudents();
    //根据条件查询教师的所有信息
    @Select("select * from teacher where tno=#{conValue} or tname=#{conValue}")
    List<Teacher> selectTeachersByCon(Teacher teacher);
    //查询所有教师
    @Select("select * from teacher")
    List<Teacher> selectTeachers();
    //增加教师所交的课程，所教班级
    @Insert("insert into teacher_course (tno,cno,site,week,dj,status,classno,CStatus) values(#{tno},#{cno},#{site},#{week},#{dj},#{status},#{classno},#{CStatus})")
    int  addTeacherCourse(TeacherCourse teacherCourse);

}
