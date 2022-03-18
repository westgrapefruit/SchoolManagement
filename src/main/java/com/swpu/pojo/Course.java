package com.swpu.pojo;

public class Course extends Page{
    private String cno;//课程号
    private String cname;//课程名
    private String college;//学院
    private String ctype;//课程类型，必修或选修
    private String credit;//学分
    private String scoreWay;//得分方式
    private String dscb;//课程描述
    private String class_hours;//学时
    private String begin_week;//起始周
    private String end_week;//结束周
    private String tno;

    public String getTno() {
        return tno;
    }

    public void setTno(String tno) {
        this.tno = tno;
    }

    //描述查询条件condition的参数
    private String condition =null;
    //描述查询条件conValue的参数
    private String conValue = null;

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public String getConValue() {
        return conValue;
    }

    public void setConValue(String conValue) {
        this.conValue = conValue;
    }



    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getCtype() {
        return ctype;
    }

    public void setCtype(String ctype) {
        this.ctype = ctype;
    }

    public String getCredit() {
        return credit;
    }

    public void setCredit(String credit) {
        this.credit = credit;
    }

    public String getScoreWay() {
        return scoreWay;
    }

    public void setScoreWay(String scoreWay) {
        this.scoreWay = scoreWay;
    }

    public String getDscb() {
        return dscb;
    }

    public void setDscb(String dscb) {
        this.dscb = dscb;
    }

    public String getClass_hours() {
        return class_hours;
    }

    public void setClass_hours(String class_hours) {
        this.class_hours = class_hours;
    }

    public String getBegin_week() {
        return begin_week;
    }

    public void setBegin_week(String begin_week) {
        this.begin_week = begin_week;
    }

    public String getEnd_week() {
        return end_week;
    }

    public void setEnd_week(String end_week) {
        this.end_week = end_week;
    }
}
