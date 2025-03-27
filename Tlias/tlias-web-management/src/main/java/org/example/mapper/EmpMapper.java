package org.example.mapper;

import org.apache.ibatis.annotations.*;
import org.example.pojo.Emp;
import org.example.pojo.EmpQueryParam;

import java.util.List;
import java.util.Map;

@Mapper
public interface EmpMapper {
    @Select("select count(*) from emp e left join dept d on e.dept_id=d.id")
    Long count();

    /*@Select("SELECT e.*,d.name deptName FROM emp e LEFT JOIN dept d ON e.dept_id=d.id " +
            "where e.name like concat('%',#{name},'%') and e.gender=#{gender} and e.entry_date BETWEEN #{begin} and #{end} " +
            "ORDER BY e.update_time DESC limit #{page},#{pageSize}")*/
    List<Emp> list(EmpQueryParam empQueryParam);
    @Options(useGeneratedKeys = true,keyProperty = "id")
    @Insert("insert into emp(username,password,name,gender,phone,job,salary,image,entry_date,dept_id,create_time,update_time) " +
            "values (#{username},'123455',#{name},#{gender},#{phone},#{job},#{salary},#{image},#{entryDate},#{deptId},#{createTime},#{updateTime})")
    void insert(Emp emp);
    void deleteByIds(List<Integer> ids);

    Emp getById(Integer id);

    void update(Emp emp);

    @MapKey("pos")
    List<Map<String,Object>> countEmpJobData();

    @MapKey("gender")
    List<Map<String,Object>> countEmpGender();

    @Select("select id, username, password, name, gender, phone, job, salary, image, entry_date, dept_id, create_time, update_time from emp")
    List<Emp> findAll();
}
