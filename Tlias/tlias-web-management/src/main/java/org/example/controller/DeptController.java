package org.example.controller;

import lombok.extern.slf4j.Slf4j;
import org.example.pojo.Result;
import org.example.pojo.User;
import org.example.service.impl.DeptServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("/depts")
@RestController
public class DeptController {
    private static final Logger log=LoggerFactory.getLogger(DeptController.class);
    @Autowired
    private DeptServiceImpl deptService;
    @GetMapping
    public Result list(){
        List<User> list = deptService.findAll();
        log.info("查询所有部门");
        return Result.success(list);
    }
    @DeleteMapping
    public Result delete(Integer id){
        deptService.deleteById(id);
        log.info("已删除id为:"+id+"的部门");
        return Result.success();
    }

    @PostMapping
    public Result add(@RequestBody User user){
        log.info("添加部门"+user);
        deptService.insert(user);
        return Result.success();
    }

    @GetMapping("/{id}")
    public Result findById(@PathVariable Integer id){
        User user = deptService.findById(id);
        return Result.success(user);
    }

    @PutMapping
    public Result update(@RequestBody User user){
        log.info("修改部门"+user);
        deptService.update(user);
        return Result.success();
    }
}

