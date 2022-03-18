package com.swpu.controller;

import com.swpu.pojo.Classes;
import com.swpu.pojo.Teacher;
import com.swpu.service.IClassManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/classManagement")
public class ClassManagementController {


    @Autowired
    IClassManagementService classManagementService;

    @RequestMapping("/editClassInformation")
    @ResponseBody
    public HashMap<String,Object> editClassInformation(Classes classes){
        int affectRows = classManagementService.editClassInformation(classes);
        HashMap<String,Object> map = new HashMap<>();
        if (affectRows>0)
            map.put("info","修改成功");
        else
            map.put("info","修改失败");
        return map;
    }
    @RequestMapping("/addClassInformation")
    @ResponseBody
    public HashMap<String, Object> addClassInformation(Classes item) {
        HashMap<String, Object> map = new HashMap<>();
        int num = classManagementService.addClassInformation(item);
        System.out.println(num);
        if (num > 0) {
            map.put("info", "新增成功");
        } else {
            map.put("info", "新增失败");
        }
        return map;
    }


    @RequestMapping("/deleteClassInformation")
    @ResponseBody
    public HashMap<String, Object> deleteClassInformation(Classes item) {
        HashMap<String, Object> map = new HashMap<>();
        //删除前确认该班级是否存在
        List<Classes> classes = classManagementService.queryClassInformationByClassno(item);
        if(classes!=null){
            int num = classManagementService.deleteClassInformation(item);
            if (num > 0) {
                map.put("info", "删除成功");
            } else {
                map.put("info", "删除失败");
            }
        }else {
            map.put("info", "班级不存在");
        }
        return map;
    }

    @RequestMapping("/queryClassInformation")
    @ResponseBody
    public HashMap<String, Object> queryClassInformation(Classes item) {
        System.out.println("Jinlaile");
        HashMap<String, Object> map = classManagementService.queryClassInformation(item);

        return map;
    }


    @RequestMapping("/queryClassInformationByClassnoAndClassName")
    @ResponseBody
    public HashMap<String, Object> queryClassInformationByClassnoAndClassName(Classes item) {
        HashMap<String, Object> map = new HashMap<>();
        List<Classes> classes = classManagementService.queryClassInformationByClassnoAndClassName(item);
        map.put("info",classes);
        return map;
    }

    @RequestMapping("/queryAllClassByTeacher")
    @ResponseBody
    public HashMap<String, Object> queryAllClassByTeacher(Teacher teacher) {
        HashMap<String, Object> map = new HashMap<>();
        map = classManagementService.queryAllClassByTeacher(teacher);
       //for (int i = 0; i < classes.size(); i++) {
       //    classes.set(i, classManagementService.queryClassInformationByClassno(classes.get(i)));
       //}

        return map;
    }
}
