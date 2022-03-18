package com.swpu.service;

import com.swpu.pojo.Classes;
import com.swpu.pojo.Teacher;

import java.util.HashMap;
import java.util.List;

public interface IClassManagementService {
    //添加班级信息
    int addClassInformation(Classes item);

    //删除班级信息
    int deleteClassInformation(Classes item);
    //修改班级信息
    int editClassInformation(Classes item);
    //查询班级信息通过班级编号
    List<Classes> queryClassInformationByClassno(Classes item);

    List<Classes> queryClassInformationByClassnname(Classes item);
    //查询班级信息通过班级编号以及班级名
    List<Classes> queryClassInformationByClassnoAndClassName(Classes item);
    //查询所有的班级，用于管理员进行管理
    HashMap<String,Object> queryClassInformation(Classes item);
    //老师查询自己教授课程的信息
   HashMap<String,Object> queryAllClassByTeacher(Teacher teacher);
}
