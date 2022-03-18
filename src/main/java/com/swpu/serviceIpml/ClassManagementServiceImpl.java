package com.swpu.serviceIpml;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.swpu.dao.ClassManagementDao;
import com.swpu.pojo.Classes;
import com.swpu.pojo.Course;
import com.swpu.pojo.Teacher;
import com.swpu.service.IClassManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class ClassManagementServiceImpl implements IClassManagementService {

    @Autowired
    ClassManagementDao classManagementDao;

    @Override
    public int addClassInformation(Classes item) {
        //这里需要的是通过班级编号，班级名称来进行增加
        //先判断传入的这个两个值是否为空
        int result = 0;
        if (item.getClassno() != null && item.getClassname() != null) {
            //这里添加的结果是除去上面两个字段  其他为空

            result = classManagementDao.addClassInformation(item);
        }
        return result;
    }

    @Override
    public int deleteClassInformation(Classes item) {
        int result = 0;
        if (item.getClassno() != null && item.getMajor() != null) {
            //这里添加的结果是除去上面两个字段  其他为空
            result = classManagementDao.deleteClassInformation(item);
        }
        return result;
    }

    @Override
    public int editClassInformation(Classes item) {
        return classManagementDao.editClassInformation(item);
    }

    @Override
    public List<Classes> queryClassInformationByClassno(Classes item) {
        if (item.getClassno() != null) {
            item.setMajor("aaa");
            item.setMaxnum("aaa");
            item.setCollege("aaa");
            item.setGrade("aaa");
            return classManagementDao.queryClassInformationByClassno(item);
        }
        return null;
    }

    @Override
    public List<Classes> queryClassInformationByClassnname(Classes item) {
        if (item.getClassname() != null) {
            item.setMajor("aaa");
            item.setMaxnum("aaa");
            item.setCollege("aaa");
            item.setGrade("aaa");
            return classManagementDao.queryClassInformationByClassno(item);
        }
        return null;
    }

    @Override
    public List<Classes> queryClassInformationByClassnoAndClassName(Classes item) {
        if(item.getClassno()==null && item.getMajor()==null){
            return null;
        }
        item.setGrade("aaa");
        item.setMaxnum("aaa");
        item.setCollege("aaa");
        return classManagementDao.queryClassInformationByClassnoAndMajor(item);
    }

    @Override
    public HashMap<String,Object> queryAllClassByTeacher(Teacher teacher) {
        HashMap<String,Object> map = new HashMap<>();
        List<Classes> list = classManagementDao.queryAllClassByTeacher(teacher);
        List<Course> list2 = new ArrayList<>();
        for(int i =0;i<list.size();i++){
            Course course = new Course();
            course.setCno(list.get(i).getCno());
          course = classManagementDao.queryAllCourseByClass(course);

          list2.add(course);
        }
        map.put("list",list);
        map.put("list2",list2);
        return map;
    }

    @Override
    public HashMap<String, Object> queryClassInformation(Classes classes) {
        HashMap<String, Object> map = new HashMap<>();
        //使用分页插件
        //1、设置分页参数
        PageHelper.startPage(classes.getPage(), classes.getRow());
        List<Classes> list = new ArrayList<>();

        if (classes.getConValue()==null)
            map.put("list",queryClassInformationByClassnoAndClassName(classes));

        else {
            //设置分页参数
            PageHelper.startPage(classes.getPage(),classes.getRow());
            System.out.println("yeshu:"+classes.getPage());
            list = classManagementDao.queryClassInformation();
            //将查询的数据转换为分页对象
            PageInfo<Classes> page = new PageInfo<>(list);
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


}
