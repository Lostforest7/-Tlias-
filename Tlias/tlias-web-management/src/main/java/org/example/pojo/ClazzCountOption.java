package org.example.pojo;

import java.util.List;

/**
 * 班级人数统计
 */
public class ClazzCountOption {
    private List clazzList; //职位列表
    private List dataList; //人数列表

    public ClazzCountOption() {
    }

    public ClazzCountOption(List clazzList, List dataList) {
        this.clazzList = clazzList;
        this.dataList = dataList;
    }

    /**
     * 获取
     * @return clazzList
     */
    public List getClazzList() {
        return clazzList;
    }

    /**
     * 设置
     * @param clazzList
     */
    public void setClazzList(List clazzList) {
        this.clazzList = clazzList;
    }

    /**
     * 获取
     * @return dataList
     */
    public List getDataList() {
        return dataList;
    }

    /**
     * 设置
     * @param dataList
     */
    public void setDataList(List dataList) {
        this.dataList = dataList;
    }

    public String toString() {
        return "ClazzCountOption{clazzList = " + clazzList + ", dataList = " + dataList + "}";
    }
}
