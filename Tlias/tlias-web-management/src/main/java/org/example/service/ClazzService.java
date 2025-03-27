package org.example.service;

import org.example.pojo.Clazz;
import org.example.pojo.Emp;
import org.example.pojo.EmpQueryParam;
import org.example.pojo.PageResult;

import java.util.List;

public interface ClazzService {
    PageResult<Clazz> selectAll(EmpQueryParam empQueryParam);

    void sava(Clazz clazz);

    Clazz getInfo(Integer id);

    void update(Clazz clazz);

    void deleteById(Integer id);

    List<Clazz> findAll();

    /*List<Emp> selectEmp();*/
}
