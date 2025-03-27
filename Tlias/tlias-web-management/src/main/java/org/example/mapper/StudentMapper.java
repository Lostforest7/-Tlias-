package org.example.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.pojo.Student;
import org.example.pojo.StudentQueryParam;

import java.util.List;
import java.util.Map;

@Mapper
public interface StudentMapper {
    Long count();

    List<Student> selectAll(StudentQueryParam studentQueryParam);

    void insert(Student student);

    Student getById(Integer id);

    void update(Student student);

    void delete(List<Integer> ids);

    void violation(Integer id, Integer score);

    @Select("SELECT c.name cname,COUNT(s.id) scount FROM clazz c LEFT JOIN student s ON c.id=s.clazz_id GROUP BY c.name ORDER BY COUNT(s.id) DESC")
    List<Map<String, Object>> getStudentCount();

    List<Map<String, Object>> getStudentDegreeData();
}
