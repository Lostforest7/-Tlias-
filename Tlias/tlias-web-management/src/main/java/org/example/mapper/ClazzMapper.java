package org.example.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.example.pojo.Clazz;
import org.example.pojo.Emp;
import org.example.pojo.EmpQueryParam;

import java.time.LocalDate;
import java.util.List;

@Mapper
public interface ClazzMapper {
    @Select("SELECT count(*) FROM clazz")
    Long count();

    List<Clazz> selectAll(@Param("param") EmpQueryParam empQueryParam, @Param("currentDate") LocalDate currentDate);

    void insert(@Param("param") Clazz clazz);

    Clazz getById(Integer id);

    void update(Clazz clazz);

    void delete(Integer id);

    @Select("SELECT * FROM clazz")
    List<Clazz> findAll();

    /*List<Emp> selectEmp();*/
}
