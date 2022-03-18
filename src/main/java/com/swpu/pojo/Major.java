package com.swpu.pojo;

public class Major extends College{//继承学院的类
    private String[] majors;//专业

    public String[] getMajors() {
        return majors;
    }

    public void setMajors(String[] majors) {
        this.majors = majors;
    }
}
