package com.swpu.dao;

import com.swpu.pojo.*;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface GradesManagementDao {
    //------------------------------管理员功能------------------------------------------------------

    /**
     *  录入成绩  （管理员）
     * @param sc 需要的值
     * @return  返回是否操作成功
     */
    @Insert("insert into sc (sno,cno,score)" +
            " value (#{sno},#{cno},#{score})")
    int addGradesInformation(SC sc);


    /**
     *  删除成绩  （管理员）
     * @param sc 需要的值
     * @return  返回是否操作成功
     */
    @Delete("Delete from sc where sno=#{sno} and cno=#{cno}")
    int deleteGradesInformation(SC sc);


    /**
     * 修改成绩
     * @param sc 修改的成绩
     * @return 返回是否操作成功
     */
    @Update("update sc set score=#{score}" +
            "where sno=#{sno} and cno=#{cno}")
    int editGradesInformation(SC sc);


    /**
     * 查询全部成绩
     * @return 成绩信息
     */
    @Select("select * from sc")
    List<SC> queryAllGradesInformation();

    /**
     * 联合查询 通过学号，教师编号，班级，课程 查询成绩
     * @param sc
     * @return
     */
    @Select("select * from sc where cno=#{cno} and tno=#{tno}")
    List<SC> queryGradesBySnoAndCnoAndTnoAndClassno(SC sc);


    //------------------------------教师功能------------------------------------------------------

    /**
     * 查询全部授课学生的成绩信息
     * @param t
     * @return
     */
    @Select("select * from sc where tno=#{tno}")
    List<SC> queryGradesForTeacher(Teacher t);


    //------------------------------学生功能------------------------------------------------------

    @Select("select * from sc where sno=#{sno}")
    List<SC> queryGradesForStudent(Student s);
    @Select("select * from sc")
    List<SC> queryGrades(SC sc);
    @Select("select * from sc where cno=#{conValue} or sno=#{conValue}")
    List<SC> queryGradesByCnoandSno(SC sc);
}
