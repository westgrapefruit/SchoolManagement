package com.swpu.controller;


import com.swpu.pojo.Course;
import com.swpu.pojo.Student;
import com.swpu.pojo.Teacher;
import com.swpu.pojo.TeacherCourse;
import com.swpu.service.ICourseManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/courseManagement")
public class CourseManagementController {
    @Autowired
    ICourseManagementService courseManagementService;

    @RequestMapping("/addCourseInformation")
    @ResponseBody
    public HashMap<String, Object> addCourseInformation(Course item) {
        HashMap<String, Object> map = new HashMap<>();
        int num = courseManagementService.addCourseInformation(item);
        if (num > 0) {
            map.put("info", "新增成功");
        } else {
            map.put("info", "新增失败");
        }
        return map;
    }


    @RequestMapping("/deleteCourseInformation")
    @ResponseBody
    public HashMap<String, Object> deleteCourseInformation(Course item) {
        HashMap<String, Object> map = new HashMap<>();
        int num = courseManagementService.deleteCourseInformation(item);
        if (num > 0) {
            map.put("info", "删除成功");
        } else {
            map.put("info", "删除失败");
        }
        return map;
    }


    /**
     * 修改课程信息
     * @param item
     * @return
     */
    @RequestMapping("/editCourseInformation")
    @ResponseBody
    public HashMap<String, Object> editCourseInformation(Course item) {
        HashMap<String, Object> map = new HashMap<>();
        // 1、先判断是否有对相应编号的课程
        List<Course> courses = courseManagementService.queryCourseByCno(item);
        if(courses!=null){
            // 2、判断必填项是否已经填写
            int num = courseManagementService.editCourseInformation(item);
            if (num > 0) {
                map.put("info", "修改成功");
            } else {
                map.put("info", "修改失败");
            }
        }else{
            map.put("info", "该课程不存在，请检查后重试");
        }
        return map;
    }

    @RequestMapping("/queryAllCourseInformation")
    @ResponseBody
    public HashMap<String, Object> queryAllCourseInformation(Course course) {
        return courseManagementService.queryAllCourseInformation(course);
    }


    @RequestMapping("/queryCourseByTno")
    @ResponseBody
    public HashMap<String, Object> queryCourseByCnoAndCName(Course course) {
        HashMap<String, Object> map = new HashMap<>();
        List<Course> courses = courseManagementService.queryCourseByCnoAndCName(course);
        map.put("list",courses);
        return map;
    }
    @RequestMapping("/queryCourseByTnoWithTeacher")
    @ResponseBody
    public HashMap<String, Object> queryCourseByTnoWithTeacher(Teacher teacher) {

        return courseManagementService.queryCourseByTnoWithTeacher(teacher);


    }

    @RequestMapping("/queryAllTeachCourse")
    @ResponseBody
    public HashMap<String, Object> queryAllTeachCourse(Teacher teacher) {
        HashMap<String, Object> map = new HashMap<>();
        return courseManagementService.queryAllTeachCourse(teacher);


    }

    //@RequestMapping("/queryAllTeachCourse")
    //@ResponseBody
    //public HashMap<String, Object> queryAllTeachCourseByClassname(Teacher teacher) {
    //    HashMap<String, Object> map = new HashMap<>();
    //    List<Course> courses = courseManagementService.queryAllTeachCourse(teacher);
    //    map.put("info",courses);
    //    return map;
    //}



        @RequestMapping("/queryAllLearnCourse")
    @ResponseBody
    public HashMap<String, Object> queryAllLearnCourse(Student student) {
            return  courseManagementService.queryAllLearnCourse(student);
    }

}
