package com.swpu.service;

import com.swpu.pojo.Course;
import com.swpu.pojo.Student;
import com.swpu.pojo.Teacher;
import com.swpu.pojo.TeacherCourse;

import java.util.HashMap;
import java.util.List;

public interface ICourseManagementService {


    HashMap<String,Object> queryAllLearnCourse(Student student);

    List<Course> queryCourseByCnoAndSno(Student student, Course course);

    List<Course> queryCourseByCnoAndTno(Teacher teacher, Course course);
    HashMap<String,Object> queryCourseByTnoWithTeacher(Teacher teacher);

    HashMap<String,Object> queryAllTeachCourse(Teacher teacher);

    int editCourseInformation(Course course);

    List<Course> queryCourseByCno(Course course);

    List<Course> queryCourseByCname(Course course);

    List<Course> queryCourseByCnoAndCName(Course course);

    HashMap<String, Object> queryAllCourseInformation(Course course);

    int deleteCourseInformation(Course course);

    int addCourseInformation(Course course);
}
