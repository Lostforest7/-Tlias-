package org.example.service.impl;

import org.example.mapper.DeptMapper;
import org.example.pojo.User;
import org.example.service.Deptservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Service
public class DeptServiceImpl implements Deptservice {
    @Autowired
    private DeptMapper deptMapper;
    @Override
    public List<User> findAll() {
        return deptMapper.findAll();
    }

    @Override
    public Integer deleteById(Integer id) {
        return deptMapper.deleteById(id);
    }

    @Override
    public void insert(User user) {
        user.setCreateTime(LocalDateTime.now());
        user.setUpdateTime(LocalDateTime.now());
        deptMapper.insert(user);
    }
    @Override
    public User findById(Integer id) {
        return deptMapper.findById(id);
    }

    @Override
    public void update(User user) {
        user.setUpdateTime(LocalDateTime.now());
        deptMapper.update(user);
    }
}
