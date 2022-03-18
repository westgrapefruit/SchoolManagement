package com.swpu.controller;

import com.swpu.service.UpdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/excel")
public class UpdController {

    @Autowired
    UpdService updService;

    /**
     * 页面
     */
    @RequestMapping("/index")
    public String index(){

        return "excel";
    }
    /**
     * 导入excel
     */
    @RequestMapping("/teacherimport")
    @ResponseBody
    public String excelImport(@RequestParam(value="filename") MultipartFile file, HttpSession session){

//		String fileName = file.getOriginalFilename();

        int result = 0;

        try {
            result = updService.addTeacher(file);
        } catch (Exception e) {

            e.printStackTrace();
        }

        if(result > 0){
            return "excel文件数据导入成功！";
        }else{
            return "excel数据导入失败！";
        }

    }
    @RequestMapping("/studentimport")
    @ResponseBody
    public String excelImport2(@RequestParam(value="filename") MultipartFile file, HttpSession session){

//		String fileName = file.getOriginalFilename();

        int result = 0;

        try {
            result = updService.addStudent(file);
        } catch (Exception e) {

            e.printStackTrace();
        }

        if(result > 0){
            return "excel文件数据导入成功！";
        }else{
            return "excel数据导入失败！";
        }

    }

}
