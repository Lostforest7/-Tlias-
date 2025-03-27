package org.example.pojo;

public class StudentQueryParam {
    private Integer clazzId;
    private Integer degree;
    private String name;
    private Integer page=1;
    private Integer pageSize=10;

    public StudentQueryParam() {
    }

    public StudentQueryParam(Integer clazzId, Integer degree, String name, Integer page, Integer pageSize) {
        this.clazzId = clazzId;
        this.degree = degree;
        this.name = name;
        this.page = page;
        this.pageSize = pageSize;
    }

    /**
     * 获取
     * @return clazzId
     */
    public Integer getClazzId() {
        return clazzId;
    }

    /**
     * 设置
     * @param clazzId
     */
    public void setClazzId(Integer clazzId) {
        this.clazzId = clazzId;
    }

    /**
     * 获取
     * @return degree
     */
    public Integer getDegree() {
        return degree;
    }

    /**
     * 设置
     * @param degree
     */
    public void setDegree(Integer degree) {
        this.degree = degree;
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
        return "StudentQueryParam{clazzId = " + clazzId + ", degree = " + degree + ", name = " + name + ", page = " + page + ", pageSize = " + pageSize + "}";
    }
}
