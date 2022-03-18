package com.swpu.dao;

import com.swpu.pojo.Classes;
import com.swpu.pojo.Course;
import com.swpu.pojo.Teacher;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ClassManagementDao {

    /**
     *  添加班级信息  （管理员）
     * @param item 需要的值
     * @return  返回是否操作成功
     */
    @Insert("insert into classes (classno,classname,college,major,maxnum,grade)" +
            " value (#{classno},#{classname},#{college},#{major},#{maxnum},#{grade})")
    int addClassInformation(Classes item);

    /**
     * 删除班级信息
     * @param item  需要删除的对象
     * @return 返回是否操作成功
     */
    @Delete("delete from classes where classno=#{classno}")
    int deleteClassInformation(Classes item);

    /**
     * 修改班级信息
     * @param item 需要修改的班级
     * @return 返回是否操作成功
     */
    @Update("update classes set college=#{college},classname=#{classname},major=#{major},maxnum=#{maxnum},grade=#{grade} " +
            "where classno=#{classno}")
    int editClassInformation(Classes item);

    /**
     * 查询班级信息通过班级编号
     * @param item 需要查询班级的班级
     * @return 查询的结果
     */
    @Select("select * from classes where classno=#{classno}")
    List<Classes> queryClassInformationByClassno(Classes item);

    /**
     * 查询班级信息通过班级名
     * @param item 需要查询班级的班级
     * @return 查询的结果
     */
    @Select("select * from classes where classname=#{classname}")
    List<Classes> queryClassInformationByClassname(Classes item);

    /**
     * 查询班级信息通过班级编号以及班级名
     * @param item 需要查询班级的班级
     * @return 查询的结果
     */
    @Select("select * from classes where classno=#{classno} and major=#{major}")
    List<Classes> queryClassInformationByClassnoAndMajor(Classes item);

    /**
     * 查询所有的班级，用于管理员进行管理
     * @return 返回所有班级信息
     */
    @Select("select * from classes")
    List<Classes> queryClassInformation();


    /**
     * 查询教师的教授的所有课程
     * @param teacher 该教师
     * @return 授课班级的列表
     */
    @Select("select DISTINCT classno,cno,site from teacher_course where tno=#{tno}")
    List<Classes> queryAllClassByTeacher(Teacher teacher);

    @Select("select * from course where cno=#{cno}")
    Course queryAllCourseByClass(Course course);


}
