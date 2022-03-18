package com.swpu.controller;


import com.swpu.pojo.SC;
import com.swpu.pojo.Student;
import com.swpu.pojo.Teacher;
import com.swpu.service.IGradesManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/GradesManagement")
public class GradesManagementController {

    @Autowired
    IGradesManagementService gradesManagementService;

    @RequestMapping("/addGradesInformation")
    @ResponseBody
    public HashMap<String, Object> addGradesInformation(SC item) {
        HashMap<String, Object> map = new HashMap<>();
        int num = gradesManagementService.addGradesInformation(item);
        if (num > 0) {
            map.put("info", "新增成功");
        } else {
            map.put("info", "新增失败");
        }
        return map;
    }

    @RequestMapping("/deleteGradesInformation")
    @ResponseBody
    public HashMap<String, Object> deleteGradesInformation(SC item) {
        HashMap<String, Object> map = new HashMap<>();
        int num = gradesManagementService.deleteGradesInformation(item);
        if (num > 0) {
            map.put("info", "删除成功");
        } else {
            map.put("info", "删除失败");
        }
        return map;
    }

    @RequestMapping("/editClassInformation")
    @ResponseBody
    public HashMap<String, Object> editGradesInformation(SC item) {
        HashMap<String, Object> map = new HashMap<>();
        int num = gradesManagementService.editGradesInformation(item);
        if (num > 0) {
            map.put("info", "编辑成功");
        } else {
            map.put("info", "编辑失败");
        }
        return map;
    }

    @RequestMapping("/queryAllGradesInformation")
    @ResponseBody
    public HashMap<String, Object> queryAllGradesInformation(SC sc) {
        return gradesManagementService.queryAllGradesInformation(sc);
    }


    @RequestMapping("/queryGradesForTeacher")
    @ResponseBody
    public HashMap<String, Object> queryGradesForTeacher(Teacher t) {
        return  gradesManagementService.queryGradesForTeacher(t);
    }

    @RequestMapping("/queryGradesForStudent")
    @ResponseBody
    public HashMap<String, Object> queryGradesForStudent(Student s) {
        return gradesManagementService.queryGradesForStudent(s);
    }
    @RequestMapping("/queryGrades")
    @ResponseBody
    public HashMap<String, Object> queryGrades(SC sc) {
        return gradesManagementService.queryGrades(sc);
    }

    @RequestMapping("/queryGradesBySnoAndCnoAndTnoAndClassno")
    @ResponseBody
    public HashMap<String, Object> queryGradesBySnoAndCnoAndTnoAndClassno(SC sc) {
        HashMap<String, Object> map = gradesManagementService.queryGradesBySnoAndCnoAndTnoAndClassno(sc);
        return map;
    }

}
