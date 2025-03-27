package org.example.mapper;

import org.apache.ibatis.annotations.*;
import org.example.pojo.User;

import java.util.List;

@Mapper
public interface DeptMapper {
    @Select("SELECT id, name, create_time , update_time FROM `dept` ORDER BY create_time DESC ")
    List<User> findAll();

    @Delete("delete from dept where id=#{id}")
    Integer deleteById(Integer id);

    @Insert("insert into dept (name,create_time,update_time) values (#{name},#{createTime},#{updateTime})")
    void insert(User user);

    @Select("select id,name,create_time,update_time from dept where id=#{id}")
    User findById(Integer id);

    @Update("update dept set name=#{name},update_time=#{updateTime} where id=#{id}")
    void update(User user);
}
