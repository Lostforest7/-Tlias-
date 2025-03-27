package org.example.service;

import org.example.pojo.User;

import java.util.List;

public interface Deptservice {
    public List<User> findAll();
    public Integer deleteById(Integer id);
    public void insert(User name);
    public User findById(Integer id);
    public void update(User user);
}
