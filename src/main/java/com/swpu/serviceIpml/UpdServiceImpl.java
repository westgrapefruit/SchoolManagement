package com.swpu.serviceIpml;

import com.swpu.dao.UserDao;
import com.swpu.pojo.Student;
import com.swpu.pojo.Teacher;
import com.swpu.service.UpdService;
import com.swpu.util.PasswordConverter;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

@Service
public class UpdServiceImpl implements UpdService {
    @Autowired
    private UserDao userDao;
    @Autowired
    PasswordConverter passwordConverter;
    @Override
    public int addStudent(MultipartFile file) throws Exception{

        int result1 = 0;
        int result2 = 0;
        int result = 0;
//		存放excel表中所有user细腻
        List<Student> userList = new ArrayList<>();
        /**
         *
         * 判断文件版本
         */
        String fileName = file.getOriginalFilename();
        String suffix = fileName.substring(fileName.lastIndexOf(".")+1);

        InputStream ins = file.getInputStream();

        Workbook wb = null;

        if(suffix.equals("xlsx")){

            wb = new XSSFWorkbook(ins);

        }else{
            wb = new HSSFWorkbook(ins);
        }
        /**
         * 获取excel表单
         */
        Sheet sheet = wb.getSheetAt(0);


        /**
         * line = 2 :从表的第三行开始获取记录
         *
         */
        if(null != sheet){

            for(int line = 0; line <= sheet.getLastRowNum();line++){

                Student student = new Student();

                Row row = sheet.getRow(line);

                if(null == row){
                    continue;
                }
                /**
                 * 判断单元格类型是否为文本类型
                 */
                if(1 != row.getCell(0).getCellType()){
                    System.out.println("单元格类型不是文本类型！");
                }

                /**
                 * 获取第一个单元格的内容
                 */
                String college = row.getCell(0).getStringCellValue();

                row.getCell(1).setCellType(Cell.CELL_TYPE_STRING);
                /**
                 * 获取第二个单元格的内容
                 */

                String grade = row.getCell(1).getStringCellValue();

                Cell cell =  row.getCell(2);
                //设置单元格类型
                cell.setCellType(CellType.STRING);
                String classno = cell.getStringCellValue();
                cell =  row.getCell(3);
                //设置单元格类型
                cell.setCellType(CellType.STRING);
                String sno = row.getCell(3).getStringCellValue();

                String name = row.getCell(4).getStringCellValue();
                String sex = row.getCell(5).getStringCellValue();
                cell =  row.getCell(6);
                //设置单元格类型
                cell.setCellType(CellType.STRING);
                String pnum = row.getCell(6).getStringCellValue();
                String mail = row.getCell(7).getStringCellValue();

                String major = row.getCell(8).getStringCellValue();

                student.setCollege(college);
                student.setGrade(grade);
                student.setClassno(classno);
                student.setSno(sno);
                student.setName(name);
                student.setSex(sex);
                student.setPnum(pnum);
                student.setMail(mail);
                student.setMajor(major);
                student.setSalt(student.getSno());

                String pwd = passwordConverter.encrypt("123456",student.getSno());
                student.setSpwd(pwd);
                userList.add(student);

            }

            for(Student userInfo:userList){

                /**
                 * 判断数据库表中是否存在用户记录，若存在，则更新，不存在，则保存记录
                 */
                List<Student> studentList = userDao.selectStudentBySno(userInfo);
                System.out.println(studentList.size());
                System.out.println(userInfo.getSno()+userInfo.getCollege()+userInfo.getGrade()+userInfo.getMail()+userInfo.getMajor());

                if(studentList.size()==0){
                    result1 = userDao.addStudent(userInfo);
                    result2 = userDao.addStudentlogin(userInfo);
                    if (result1!=0 && result2!=0)
                        result = 1;
                }else{
                    result = userDao.updateStudent(userInfo);

                }


            }
        }

        return result;
    }

    @Override
    public int addTeacher(MultipartFile file) throws Exception{

        int result = 0;
        int result1 = 0;
        int result2 =0 ;
//		存放excel表中所有user细腻
        List<Teacher> userList = new ArrayList<>();
        /**
         *
         * 判断文件版本
         */
        String fileName = file.getOriginalFilename();
        String suffix = fileName.substring(fileName.lastIndexOf(".")+1);

        InputStream ins = file.getInputStream();

        Workbook wb = null;

        if(suffix.equals("xlsx")){

            wb = new XSSFWorkbook(ins);

        }else{
            wb = new HSSFWorkbook(ins);
        }
        /**
         * 获取excel表单
         */
        Sheet sheet = wb.getSheetAt(0);


        /**
         * line = 2 :从表的第三行开始获取记录
         *
         */
        if(null != sheet){

            for(int line = 0; line <= sheet.getLastRowNum();line++){

                Teacher teacher = new Teacher();

                Row row = sheet.getRow(line);

                if(null == row){
                    continue;
                }
                /**
                 * 判断单元格类型是否为文本类型
                 */
                if(1 != row.getCell(0).getCellType()){
                    System.out.println("单元格类型不是文本类型！");
                }

                /**
                 * 获取第一个单元格的内容
                 */
                Cell cell =  row.getCell(0);

                cell.setCellType(CellType.STRING);
                String tno = row.getCell(0).getStringCellValue();
                /**
                 * 获取第二个单元格的内容
                 */
                String tname = row.getCell(1).getStringCellValue();
                String tsex = cell.getStringCellValue();
                String title = row.getCell(3).getStringCellValue();
                String college = row.getCell(4).getStringCellValue();
                String education = row.getCell(5).getStringCellValue();
                String mail = row.getCell(6).getStringCellValue();
                cell =  row.getCell(7);
                //设置单元格类型
                cell.setCellType(CellType.STRING);
                String pnum = row.getCell(7).getStringCellValue();
                cell =  row.getCell(8);
                //设置单元格类型
                cell.setCellType(CellType.STRING);
                String remarks = row.getCell(8).getStringCellValue();


                teacher.setTno(tno);
                teacher.setTname(tname);
                teacher.setTsex(tsex);
                teacher.setTitle(title);
                teacher.setCollege(college);
                teacher.setEducation(education);
                teacher.setPnum(pnum);
                teacher.setMail(mail);

                teacher.setRemarks(remarks);
                teacher.setSalt(teacher.getTno());

                String pwd = passwordConverter.encrypt("123456",teacher.getTno());
                teacher.setTpwd(pwd);
                userList.add(teacher);

            }

            for(Teacher userInfo:userList){

                /**
                 * 判断数据库表中是否存在用户记录，若存在，则更新，不存在，则保存记录
                 */
                List<Teacher> teacherList = userDao.selectTeacherByTno(userInfo);
                System.out.println(teacherList.size());
                System.out.println(userInfo.getTno()+userInfo.getCollege());

                if(teacherList.size()==0){
                    result1 = userDao.addTeacher(userInfo);
                    result2 = userDao.addTeacherlogin(userInfo);
                    if (result1!=0 && result2!=0)
                        result = 1;
                }else{
                    result = userDao.updateTeacher(userInfo);
                }


            }
        }

        return result;
    }
}
