package com.swpu.serviceIpml;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.pagehelper.dialect.helper.HsqldbDialect;
import com.swpu.dao.CourseManagementDao;
import com.swpu.pojo.*;
import com.swpu.service.ICourseManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;

@Service
public class CourseManagementServiceImpl implements ICourseManagementService {
    @Autowired
    CourseManagementDao courseManagementDao;

    @Override
    public HashMap<String,Object> queryAllLearnCourse(Student student) {
        List<SC> list = courseManagementDao.queryAllLearnCourse(student);
        List<TeacherCourse> list2 = new ArrayList<>();
        for (int i=0;i<list.size();i++){
            Course course = new Course();
            course.setCno(list.get(i).getCno());
            course.setTno(list.get(i).getTno());
            List<TeacherCourse> ls = courseManagementDao.queryAllLearnCourse2(course);

                for (int j=0;j<ls.size();j++){
                    list2.add(ls.get(j));
                }
        }
        HashMap<String,Object> map = new HashMap<>();
        map.put("list",list);
        map.put("list2",list2);
        return map;
    }

    @Override
    public List<Course> queryCourseByCnoAndSno(Student student, Course course) {
        return courseManagementDao.queryCourseByCnoAndSno(student, course);
    }

    @Override
    public List<Course> queryCourseByCnoAndTno(Teacher teacher, Course course) {
        return courseManagementDao.queryCourseByCnoAndTno(teacher, course);
    }

    @Override
    public HashMap<String,Object> queryCourseByTnoWithTeacher(Teacher teacher) {
        HashMap<String, Object> map = new HashMap<>();
        //使用分页插件
        //1、设置分页参数
        PageHelper.startPage(teacher.getPage(), teacher.getRow());
        List<TeacherCourse> list = new ArrayList<>();


        //设置分页参数
        PageHelper.startPage(teacher.getPage(),teacher.getRow());
        System.out.println("yeshu:"+teacher.getPage());
        list = courseManagementDao.queryCourseByTnoWithTeacher(teacher);
        //将查询的数据转换为分页对象
        PageInfo<TeacherCourse> page = new PageInfo<>(list);
        //获取分页的当前页的集合
        map.put("list",page.getList());

        if (page.getPageNum()==0)
            map.put("num",1);
        else
            map.put("num",page.getPageNum());

        //总条数
        map.put("total",page.getTotal());
        //总页数
        map.put("totalPage",page.getPages());
        //上一页
        if (page.getPrePage()==0)
            map.put("pre",1);
        else
            map.put("pre",page.getPrePage());
        //下一页
        //判断下一页是不是最后一页，是则设置为最后一页，页面不会跳转到第一页
        System.out.println("xiayiye:"+page.getNextPage());
        if (page.getNextPage()>=0)
            map.put("next",page.getNextPage());
        else
            map.put("next",page.getPages());



        return map;
    }

    @Override
    public  HashMap<String,Object> queryAllTeachCourse(Teacher teacher) {

        HashMap<String, Object> map = new HashMap<>();
        //使用分页插件
        //1、设置分页参数
        PageHelper.startPage(teacher.getPage(), teacher.getRow());
        List<TeacherCourse> list = new ArrayList<>();


            //设置分页参数
            PageHelper.startPage(teacher.getPage(),teacher.getRow());
            System.out.println("yeshu:"+teacher.getPage());
            list = courseManagementDao.queryCourseByTnoWithTeacher(teacher);
            //将查询的数据转换为分页对象
            PageInfo<TeacherCourse> page = new PageInfo<>(list);
            //获取分页的当前页的集合
            map.put("list",page.getList());

            if (page.getPageNum()==0)
                map.put("num",1);
            else
                map.put("num",page.getPageNum());

            //总条数
            map.put("total",page.getTotal());
            //总页数
            map.put("totalPage",page.getPages());
            //上一页
            if (page.getPrePage()==0)
                map.put("pre",1);
            else
                map.put("pre",page.getPrePage());
            //下一页
            //判断下一页是不是最后一页，是则设置为最后一页，页面不会跳转到第一页
            System.out.println("xiayiye:"+page.getNextPage());
            if (page.getNextPage()>=0)
                map.put("next",page.getNextPage());
            else
                map.put("next",page.getPages());



        return map;
    }

    @Override
    public int editCourseInformation(Course course) {
        return courseManagementDao.editCourseInformation(course);
    }

    @Override
    public List<Course> queryCourseByCno(Course course) {
        return courseManagementDao.queryCourseByCno(course);
    }

    @Override
    public List<Course> queryCourseByCname(Course course) {
        return courseManagementDao.queryCourseByCname(course);
    }

    @Override
    public List<Course> queryCourseByCnoAndCName(Course course) {
        return courseManagementDao.queryCourseByCnoAndCName(course);
    }

    @Override
    public HashMap<String, Object> queryAllCourseInformation(Course course) {
        HashMap<String, Object> map = new HashMap<>();
        //使用分页插件
        //1、设置分页参数
        PageHelper.startPage(course.getPage(), course.getRow());
        List<Course> list = new ArrayList<>();

        if (course.getConValue() ==null)
            map.put("list",queryCourseByCnoAndCName(course));

        else {
            //设置分页参数
            PageHelper.startPage(course.getPage(),course.getRow());
            System.out.println("yeshu:"+course.getPage());
            list = courseManagementDao.queryAllCourseInformation();
            //将查询的数据转换为分页对象
            PageInfo<Course> page = new PageInfo<>(list);
            //获取分页的当前页的集合
            map.put("list",page.getList());

            if (page.getPageNum()==0)
                map.put("num",1);
            else
                map.put("num",page.getPageNum());

            //总条数
            map.put("total",page.getTotal());
            //总页数
            map.put("totalPage",page.getPages());
            //上一页
            if (page.getPrePage()==0)
                map.put("pre",1);
            else
                map.put("pre",page.getPrePage());
            //下一页
            //判断下一页是不是最后一页，是则设置为最后一页，页面不会跳转到第一页
            System.out.println("xiayiye:"+page.getNextPage());
            if (page.getNextPage()>=0)
                map.put("next",page.getNextPage());
            else
                map.put("next",page.getPages());

        }

        return map;
    }

    @Override
    public int deleteCourseInformation(Course course) {
        return courseManagementDao.deleteCourseInformation(course);
    }

    @Override
    public int addCourseInformation(Course course) {
        return courseManagementDao.addCourseInformation(course);
    }
}
