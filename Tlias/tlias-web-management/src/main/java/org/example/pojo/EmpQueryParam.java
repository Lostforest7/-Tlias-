package org.example.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

public class EmpQueryParam {
    private String name;
    private Integer gender;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate begin;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate end;
    private Integer page=1;
    private Integer pageSize=10;


    public EmpQueryParam() {
    }

    public EmpQueryParam(String name, Integer gender, LocalDate begin, LocalDate end, Integer page, Integer pageSize) {
        this.name = name;
        this.gender = gender;
        this.begin = begin;
        this.end = end;
        this.page = page;
        this.pageSize = pageSize;
    }

    /**
     * 获取
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * 设置
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取
     * @return gender
     */
    public Integer getGender() {
        return gender;
    }

    /**
     * 设置
     * @param gender
     */
    public void setGender(Integer gender) {
        this.gender = gender;
    }

    /**
     * 获取
     * @return begin
     */
    public LocalDate getBegin() {
        return begin;
    }

    /**
     * 设置
     * @param begin
     */
    public void setBegin(LocalDate begin) {
        this.begin = begin;
    }

    /**
     * 获取
     * @return end
     */
    public LocalDate getEnd() {
        return end;
    }

    /**
     * 设置
     * @param end
     */
    public void setEnd(LocalDate end) {
        this.end = end;
    }

    /**
     * 获取
     * @return page
     */
    public Integer getPage() {
        return page;
    }

    /**
     * 设置
     * @param page
     */
    public void setPage(Integer page) {
        this.page = page;
    }

    /**
     * 获取
     * @return pageSize
     */
    public Integer getPageSize() {
        return pageSize;
    }

    /**
     * 设置
     * @param pageSize
     */
    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public String toString() {
        return "EmpQueryParam{name = " + name + ", gender = " + gender + ", begin = " + begin + ", end = " + end + ", page = " + page + ", pageSize = " + pageSize + "}";
    }
}
