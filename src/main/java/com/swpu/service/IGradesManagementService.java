package com.swpu.service;

import com.swpu.pojo.SC;
import com.swpu.pojo.Student;
import com.swpu.pojo.Teacher;

import java.util.HashMap;
import java.util.List;

public interface IGradesManagementService {
    int deleteGradesInformation(SC sc);

    int editGradesInformation(SC sc);

    int addGradesInformation(SC sc);

    HashMap<String, Object> queryAllGradesInformation(SC sc);

    HashMap<String, Object> queryGradesBySnoAndCnoAndTnoAndClassno(SC sc);

    HashMap<String, Object> queryGradesForTeacher(Teacher t);

    HashMap<String, Object> queryGradesForStudent(Student s);
    HashMap<String, Object> queryGrades(SC sc);
    HashMap<String, Object> queryGradesByCnoandSno(SC sc);

}
