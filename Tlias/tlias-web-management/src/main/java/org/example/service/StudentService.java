package org.example.service;

import org.example.pojo.PageResult;
import org.example.pojo.Student;
import org.example.pojo.StudentQueryParam;

import java.util.List;

public interface StudentService {
    PageResult<Student> selectAll(StudentQueryParam studentQueryParam);

    void sava(Student student);

    Student getInfo(Integer id);

    void updateById(Student student);

    void delete(List<Integer> ids);

    void violation(Integer id,Integer score);
}
