package com.swpu.pojo;
/*
* 描述分页属性
* */
public class Page {
    //定义页码,并且赋初值1
    private int page=1;
    //定义每一页的条数,并且赋初值1  表示每页显示10条数据
    private int row=10;

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getRow() {
        return row;
    }

    public void setRow(int row) {
        this.row = row;
    }
}
