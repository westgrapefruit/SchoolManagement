package com.swpu.serviceIpml;

import com.swpu.dao.LoginDao;
import com.swpu.pojo.Admin;
import com.swpu.pojo.Student;
import com.swpu.pojo.Teacher;
import com.swpu.service.LoginService;
import com.swpu.util.PasswordConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.concurrent.TimeUnit;

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    LoginDao loginDao;
    @Autowired
    PasswordConverter passwordConverter;//密码加密器
    @Autowired
    RedisTemplate<String,Object> redisTemplate;//redis数据库

    /**
     * 检查用户是否已经被锁定，如果是，返回剩余锁定时间，如果否，返回-1
     * @param username  username
     * @return  时间
     */
    private long getUserLoginTimeLock(String username) {
        String key = "user:" + username + ":lockTime";
        //获取key 过期时间
        long lockTime = redisTemplate.getExpire(key, TimeUnit.SECONDS);

        if(lockTime > 0){//查询用户是否已经被锁定，如果是，返回剩余锁定时间，如果否，返回-1
            return lockTime;
        }else{
            return -1;
        }
    }

    /**
     * 获取当前用户已失败次数
     * @param username  username
     * @return  已失败次数
     */
    private int getUserFailCount(String username){
        String key = "user:" + username + ":failCount";
        //从redis中获取当前用户已失败次数
        Object object = redisTemplate.opsForValue().get(key);
        if(object != null){
            return (int)object;
        }else{
            return -1;
        }
    }

    /**
     * 设置失败次数
     * @param username  username
     */
    private void setFailCount(String username){
        //获取当前用户已失败次数
        long count = this.getUserFailCount(username);
        String key = "user:" + username + ":failCount";
        if(count < 0){//判断redis中是否有该用户的失败登陆次数，如果没有，设置为1，过期时间为1分钟，如果有，则次数+1
            redisTemplate.opsForValue().set(key,1,60,TimeUnit.SECONDS);
        }else{
            redisTemplate.opsForValue().increment(key,new Double(1));
        }
    }


    @Override
    public String studentLogin(Student student, HttpServletRequest request) {
        long c = this.getUserLoginTimeLock(student.getSno());
        long c2  = getUserFailCount(student.getSno());
        //先判定用户是否被锁定
        if (this.getUserLoginTimeLock(student.getSno())<0){
            if (getUserFailCount(student.getSno())>=3){
                String key = "user:" + student.getSno() + ":lockTime";
                redisTemplate.opsForValue().set(key,-1,60,TimeUnit.SECONDS);
                return "locked";
            }

            HttpSession session = request.getSession();
            String salt = loginDao.getStudentSalt(student);
            if(salt!=null){
                //加密用户输入的密码
                String pwd = passwordConverter.encrypt(student.getSpwd(),salt);
                //把加过密的密码传到数据层中
                student.setSpwd(pwd);
                Student studentinfo = loginDao.studentLogin(student);
                if (studentinfo!=null) {
                    redisTemplate.opsForValue().set("userName",student.getSno());
                    System.out.println("登录的用户名"+student.getSno());
                    session.setAttribute("student",studentinfo);
                    return "登录成功";
                }
                else {
                    setFailCount(student.getSno());
                    return "账号或密码错误";
                }
            }else {
                setFailCount(student.getSno());
                return "用户不存在";
            }
        }else {
            String key = "user:" + student.getSno() + ":lockTime";
            redisTemplate.opsForValue().set(key,222,60,TimeUnit.SECONDS);
            return "该账号已锁定，请一分钟后重试";
        }
    }

    @Override
    public String teacherLogin(Teacher teacher, HttpServletRequest request) {
        long c = this.getUserLoginTimeLock(teacher.getTno());
        long c2  = getUserFailCount(teacher.getTno());
        //先判定用户是否被锁定
        if (this.getUserLoginTimeLock(teacher.getTno())<0){
            if (getUserFailCount(teacher.getTno())>=3){
                String key = "user:" + teacher.getTno() + ":lockTime";
                redisTemplate.opsForValue().set(key,-1,60,TimeUnit.SECONDS);
                return "locked";
            }

            HttpSession session = request.getSession();
            String salt = loginDao.getteacherSalt(teacher);
            if(salt!=null){
                //加密用户输入的密码
                String pwd = passwordConverter.encrypt(teacher.getTpwd(),salt);
                //把加过密的密码传到数据层中
                teacher.setTpwd(pwd);
                Teacher teacherinfo = loginDao.teacherLogin(teacher);
                if (teacherinfo!=null) {
                    redisTemplate.opsForValue().set("userName",teacher.getTno());
                    System.out.println("登录的用户名"+teacher.getTno());
                    session.setAttribute("teacher",teacherinfo);
                    return "登录成功";
                }
                else {
                    setFailCount(teacher.getTno());
                    return "账号或密码错误";
                }
            }else {
                setFailCount(teacher.getTno());
                return "用户不存在";
            }
        }else {
            String key = "user:" + teacher.getTno() + ":lockTime";
            redisTemplate.opsForValue().set(key,222,60,TimeUnit.SECONDS);
            return "该账号已锁定，请一分钟后重试";
        }
    }

    @Override
    public String adminLogin(Admin admin, HttpServletRequest request) {
        long c = this.getUserLoginTimeLock(admin.getAdminno());
        long c2  = getUserFailCount(admin.getAdminno());
        //先判定用户是否被锁定
        if (this.getUserLoginTimeLock(admin.getAdminno())<0){
            if (getUserFailCount(admin.getAdminno())>=3){
                String key = "user:" + admin.getAdminno() + ":lockTime";
                redisTemplate.opsForValue().set(key,-1,60,TimeUnit.SECONDS);
                return "locked";
            }

            HttpSession session = request.getSession();
            String salt = loginDao.getAdminSalt(admin);
            if(salt!=null){
                //加密用户输入的密码
                String pwd = passwordConverter.encrypt(admin.getAdminpwd(),salt);
                //把加过密的密码传到数据层中
                admin.setAdminpwd(pwd);
                Admin admininfo = loginDao.adminLogin(admin);
                if (admininfo!=null) {
                    redisTemplate.opsForValue().set("userName",admin.getAdminno());
                    System.out.println("登录的用户名"+admin.getAdminno());
                    session.setAttribute("admin",admininfo);
                    return "登录成功";
                }
                else {
                    setFailCount(admin.getAdminno());
                    return "账号或密码错误";
                }
            }else {
                setFailCount(admin.getAdminno());
                return "用户不存在";
            }
        }else {
            String key = "user:" + admin.getAdminno() + ":lockTime";
            redisTemplate.opsForValue().set(key,222,60,TimeUnit.SECONDS);
            return "该账号已锁定，请一分钟后重试";
        }
    }
}
