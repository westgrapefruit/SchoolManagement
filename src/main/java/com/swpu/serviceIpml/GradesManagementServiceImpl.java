package com.swpu.serviceIpml;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.swpu.dao.ClassManagementDao;
import com.swpu.dao.CourseManagementDao;
import com.swpu.dao.GradesManagementDao;
import com.swpu.pojo.*;
import com.swpu.service.IGradesManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class GradesManagementServiceImpl implements IGradesManagementService {

    @Autowired
    GradesManagementDao gradesManagementDao;

    @Autowired
    ClassManagementDao classManagementDao;

    @Autowired
    CourseManagementDao courseManagementDao;


    @Override
    public int deleteGradesInformation(SC sc) {
        return gradesManagementDao.deleteGradesInformation(sc);
    }

    @Override
    public int editGradesInformation(SC sc) {
        return gradesManagementDao.editGradesInformation(sc);
    }

    @Override
    public int addGradesInformation(SC sc) {
        return gradesManagementDao.addGradesInformation(sc);
    }

    /**
     * 查询全部成绩
     * @return 成绩信息
     */
    @Override
    public HashMap<String, Object> queryAllGradesInformation(SC sc) {
        HashMap<String, Object> map = new HashMap<>();
        //使用分页插件
        //1、设置分页参数
        PageHelper.startPage(sc.getPage(), sc.getRow());
        List<Classes> list = new ArrayList<>();

        if (sc.getConValue()==null)
            map.put("list",queryGradesBySnoAndCnoAndTnoAndClassno(sc));

        else {
            //设置分页参数
            PageHelper.startPage(sc.getPage(),sc.getRow());
            System.out.println("yeshu:"+sc.getPage());
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

    @Override
    public HashMap<String, Object> queryGradesBySnoAndCnoAndTnoAndClassno(SC sc) {
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("list", gradesManagementDao.queryGradesBySnoAndCnoAndTnoAndClassno(sc));
        return map;
    }

    @Override
    public HashMap<String, Object> queryGradesForTeacher(Teacher t) {
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("list", gradesManagementDao.queryGradesForTeacher(t));
        return map;
    }

    @Override
    public HashMap<String, Object> queryGradesForStudent(Student s) {
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("list", gradesManagementDao.queryGradesForStudent(s));
        return map;
    }
    @Override
    public HashMap<String, Object> queryGrades(SC sc) {
        HashMap<String,Object> map = new HashMap<>();
        List<SC> userList = new ArrayList<>();
        if (sc.getConValue()!=null)
            return  queryGradesByCnoandSno(sc);
        else {
            //设置分页参数
            PageHelper.startPage(sc.getPage(), sc.getRow());
            userList = gradesManagementDao.queryGrades(sc);
            //将查询的数据转换为分页对象
            PageInfo<SC> page = new PageInfo<>(userList);
            //获取分页的当前页的集合
            map.put("list", page.getList());
            if (page.getPageNum() == 0)
                map.put("num", 1);
            else
                map.put("num", page.getPageNum());

            //总条数
            map.put("total", page.getTotal());
            //总页数
            map.put("totalPage", page.getPages());
            //上一页
            if (page.getPrePage() == 0)
                map.put("pre", 1);
            else
                map.put("pre", page.getPrePage());
            //下一页
            //判断下一页是不是最后一页，是则设置为最后一页，页面不会跳转到第一页
            if (page.getNextPage() >= 0)
                map.put("next", page.getNextPage());
            else
                map.put("next", page.getPages());
            return map;
        }
    }
    @Override
    public HashMap<String, Object> queryGradesByCnoandSno(SC sc) {
        HashMap<String, Object> map = new HashMap<>();
        List<SC> userList = new ArrayList<>();
        //设置分页参数
        PageHelper.startPage(sc.getPage(), sc.getRow());
        if (sc.getConValue() == null || sc.getConValue().equals(""))
            userList = gradesManagementDao.queryGrades(sc);
        else {
            if (sc.getCondition() == null)
                userList = gradesManagementDao.queryGrades(sc);
            else {
                userList = gradesManagementDao.queryGradesByCnoandSno(sc);
            }
        }
        //将查询的数据转换为分页对象
        PageInfo<SC> page = new PageInfo<>(userList);
        //获取分页的当前页的集合
        map.put("list", page.getList());
        if (page.getPageNum() == 0)
            map.put("num", 1);
        else
            map.put("num", page.getPageNum());

        //总条数
        map.put("total", page.getTotal());
        //总页数
        map.put("totalPage", page.getPages());
        //上一页
        if (page.getPrePage() == 0)
            map.put("pre", 1);
        else
            map.put("pre", page.getPrePage());
        //下一页
        //判断下一页是不是最后一页，是则设置为最后一页，页面不会跳转到第一页
        if (page.getNextPage() >= 0)
            map.put("next", page.getNextPage());

        else
            map.put("next", page.getPages());
        return map;

    }

}
