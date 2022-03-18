package com.swpu.serviceIpml;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.swpu.dao.UserDao;
import com.swpu.pojo.Student;
import com.swpu.pojo.Teacher;
import com.swpu.pojo.TeacherCourse;
import com.swpu.service.UserService;
import com.swpu.util.PasswordConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeoutException;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;
    @Autowired
    PasswordConverter passwordConverter;
    /*
    增加学生
    */
    @Override
    public HashMap<String,Object> addStudent(Student student) {
        HashMap<String,Object> map = new HashMap<>();
        student.setSalt(student.getSno());
        try {
            int affectRows = userDao.addStudent(student);
            String pwd = passwordConverter.encrypt(student.getSpwd(),student.getSno());
            student.setSpwd(pwd);
            student.setSalt(student.getSno());
            int affectRows2 = userDao.addStudentlogin(student);
            if (affectRows!=0 && affectRows2!=0)
                map.put("info","增加成功");
            else
                map.put("info","增加失败");
            return map;
        }catch (Exception e){
            e.printStackTrace();
            map.put("info","学号已存在");
            return map;
        }

    }
    /*
    增加教师
    */
    @Override
    public HashMap<String,Object> addTeacher(Teacher teacher) {
        HashMap<String,Object> map = new HashMap<>();
        teacher.setSalt(teacher.getTno());
        try {
        int affectRows = userDao.addTeacher(teacher);
        String pwd = passwordConverter.encrypt(teacher.getTpwd(),teacher.getTno());
        teacher.setTpwd(pwd);
        teacher.setSalt(teacher.getTno());
        int affectRows2 = userDao.addTeacherlogin(teacher);
        if (affectRows!=0 && affectRows2!=0)
            map.put("info","增加成功");
        else
            map.put("info","增加失败");
        return map;}catch (Exception e){
            e.printStackTrace();
            map.put("info","教师号已存在");
            return map;
        }

    }
    /*
        删除学生
        */
    @Override
    public HashMap<String, Object> delStudent(Student student) {
        HashMap<String,Object> map = new HashMap<>();
        int affectRows = userDao.delStudent(student);
        int affectRows2 = userDao.delStudentlogin(student);
        if (affectRows!=0 && affectRows2!=0)
            map.put("info","删除成功");
        else
            map.put("info","删除失败");
        return map;

    }
    /*
        删除教师
        */
    @Override
    public HashMap<String, Object> delTeacher(Teacher teacher) {
        HashMap<String,Object> map = new HashMap<>();
            int affectRows = userDao.delTeacher(teacher);
            int affectRows2 = userDao.delTeacherlogin(teacher);
            if (affectRows!=0 && affectRows2!=0)
                map.put("info","删除成功");
            else
                map.put("info","删除失败");
            return map;

    }
    /*
        更新教师信息
        */
    @Override
    public HashMap<String, Object> updTeacher(Teacher teacher) {
        HashMap<String,Object> map = new HashMap<>();
        int affectRows = userDao.updateTeacher(teacher);

        if (affectRows!=0)
            map.put("info","修改成功");
        else
            map.put("info","修改失败");
        return map;
    }
    /*
           更新学生信息
           */
    @Override
    public HashMap<String, Object> updStudent(Student student) {
        HashMap<String,Object> map = new HashMap<>();
        int affectRows = userDao.updateStudent(student);
        if (affectRows!=0)
            map.put("info","修改成功");
        else
            map.put("info","修改失败");
        return map;

    }
    /*
           查询所有的教师信息
           */
    @Override
    public HashMap<String, Object> selTeachers(Teacher teacher) {
        HashMap<String,Object> map = new HashMap<>();
        List<Teacher> userList = new ArrayList<>();
        if (teacher.getConValue()!=null)
            return  selTeacherByCon(teacher);
        else {
            //设置分页参数
            PageHelper.startPage(teacher.getPage(),teacher.getRow());
            System.out.println("yeshu:"+teacher.getPage());
            userList = userDao.selectTeachers();
            //将查询的数据转换为分页对象
            PageInfo<Teacher> page = new PageInfo<>(userList);
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
    }
    /*
              查询所有的学生信息
              */
    @Override
    public HashMap<String, Object> selStudents(Student student) {
        HashMap<String,Object> map = new HashMap<>();
        List<Student> userList = new ArrayList<>();
        if (student.getConValue()!=null)
            return  selStudentByCon(student);
        else {
            //设置分页参数
            PageHelper.startPage(student.getPage(), student.getRow());
            userList = userDao.selectStudents();
            //将查询的数据转换为分页对象
            PageInfo<Student> page = new PageInfo<>(userList);
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
    /*
             根据条件查询所有的学生信息
             */
    @Override
    public HashMap<String, Object> selStudentByCon(Student student) {
        HashMap<String, Object> map = new HashMap<>();
        List<Student> userList = new ArrayList<>();
        //设置分页参数
        PageHelper.startPage(student.getPage(), student.getRow());
        if (student.getConValue() == null || student.getConValue().equals(""))
            userList = userDao.selectStudents();
        else {
            if (student.getCondition() == null)
                userList = userDao.selectStudents();
            else {
                userList = userDao.selectStudentByCon(student);
            }
        }
            //将查询的数据转换为分页对象
            PageInfo<Student> page = new PageInfo<>(userList);
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

    @Override
    public HashMap<String, Object> selTeacherByCon(Teacher teacher){
            HashMap<String, Object> map = new HashMap<>();
            List<Teacher> userList = new ArrayList<>();
            //设置分页参数
        System.out.println(teacher.getConValue()+teacher.getCondition());
            PageHelper.startPage(teacher.getPage(), teacher.getRow());
            if (teacher.getConValue() == null || teacher.getConValue().equals(""))
                userList = userDao.selectTeachers();
            else {
                if (teacher.getCondition() == null)
                    userList = userDao.selectTeachers();
                else
                    userList = userDao.selectTeachersByCon(teacher);
            }
                //将查询的数据转换为分页对象
                PageInfo<Teacher> page = new PageInfo<>(userList);

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

    @Override
    public HashMap<String, Object> addTeacherCourse(TeacherCourse teacherCourse) {
        HashMap<String,Object> map = new HashMap<>();
        try {
            int affectRows = userDao.addTeacherCourse(teacherCourse);

            if (affectRows!=0)
                map.put("info","增加成功");
            else
                map.put("info","增加失败");
            return map;
        }catch (Exception e){
            map.put("info","信息已存在");
            return map;
        }
    }
}
