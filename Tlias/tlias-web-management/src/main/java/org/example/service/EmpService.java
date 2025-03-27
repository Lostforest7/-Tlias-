package org.example.service;

import org.example.pojo.Emp;
import org.example.pojo.EmpQueryParam;
import org.example.pojo.PageResult;

import java.util.List;

public interface EmpService {
    public PageResult<Emp> page(EmpQueryParam empQueryParam);
    public void save(Emp emp);
    public void delete(List<Integer> ids);

    Emp getInfo(Integer id);

    void update(Emp emp);

    List<Emp> list();
}
