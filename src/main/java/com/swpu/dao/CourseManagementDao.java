package com.swpu.dao;

import com.swpu.pojo.*;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface CourseManagementDao {


    //------------------------------管理员功能------------------------------------------------------

    /**
     *  添加课程  （管理员）
     * @param course 需要的值
     * @return  返回是否操作成功
     */
    @Insert("insert into course (cno,cname,credit)" +
            " value (#{cno},#{cname},#{credit})")
    int addCourseInformation(Course course);

    /**
     *  删除课程  （管理员）
     * @param course 需要的值
     * @return  返回是否操作成功
     */
    @Delete("delete from course where cno=#{cno}")
    int deleteCourseInformation(Course course);

    /**
     * 查询全部课程，用于管理员进行管理
     * @return 返回所有班级信息
     */
    @Select("select * from course")
    List<Course> queryAllCourseInformation();

    /**
     * 联合查询
     * @param course
     * @return
     */
    @Select("select * from course where cno=#{cno} and cname=#{cname}")
    List<Course> queryCourseByCnoAndCName(Course course);

    /**
     * 使用主键查询
     * @param course 编号
     * @return 课程信息
     */
    @Select("select * from course where cno=#{cno}")
    List<Course> queryCourseByCno(Course course);

    /**
     * 使用主键查询
     * @param course 编号
     * @return 课程信息
     */
    @Select("select * from course where cno=#{cno}")
    List<Course> queryCourseByCname(Course course);


    /**
     * 修改班级信息(除课程编号外)
     * @param course 需要修改的班级
     * @return 返回是否操作成功
     */
    @Update("update course set cname=#{cname},college=#{college},ctype=#{ctype},credit=#{credit},scoreWay=#{scoreWay},dscb=#{dscb} where cno=#{cno}")
    int editCourseInformation(Course course);

    /**
     * 修改课程信息编号
     * @param course 需要修改的班级
     * @return 返回是否操作成功
     */
    @Update("update course set cno=#{cno},credit=#{credit} where cname=#{cname}")
    int editCourseInformationFixCno(Course course);

    //------------------------------教师功能------------------------------------------------------

    /**
     * 查询教授的全部课程
     * @param teacher 条件
     * @return 课程信息
     */
    @Select("select * from teacher_course ")
    List<TeacherCourse> queryAllTeachCourse(Teacher teacher);

    /**
     * 联合查询
     * @param course
     * @return
     */
    @Select("select * from teacher_course  where cno=#{cno} and tno=#{tno}")
    List<Course> queryCourseByCnoAndTno(Teacher teacher, Course course);

    @Select("select *from teacher_course  where tno=#{tno}")
    List<TeacherCourse> queryCourseByTnoWithTeacher(Teacher teacher);

    //------------------------------学生功能------------------------------------------------------


    /**
     * 查询所学的全部课程
     * @param student 条件
     * @return 课程信息
     */
    @Select("select * from sc where sno = #{sno}")
    List<SC> queryAllLearnCourse(Student student);
    @Select("select * from teacher_course where cno = #{cno} and tno=#{tno} ")
    List<TeacherCourse> queryAllLearnCourse2(Course course);

    /**
     * 联合查询
     * @param course  条件1
     * @param student 条件2
     * @return
     */
    @Select("select * teacher_course from where cno=#{cno} and sno=#{sno}")
    List<Course> queryCourseByCnoAndSno(Student student, Course course);
}
