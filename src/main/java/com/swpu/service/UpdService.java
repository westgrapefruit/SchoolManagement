package com.swpu.service;

import org.springframework.web.multipart.MultipartFile;

public interface UpdService {
    public int addTeacher(MultipartFile file) throws Exception;
    public int addStudent(MultipartFile file) throws Exception;
}
