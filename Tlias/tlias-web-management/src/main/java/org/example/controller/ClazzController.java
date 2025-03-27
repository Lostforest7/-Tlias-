package org.example.controller;

import org.example.pojo.*;
import org.example.service.ClazzService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/clazzs")
public class ClazzController {
    private static final Logger log= LoggerFactory.getLogger(ClazzController.class);
    @Autowired
    private ClazzService clazzService;

    @GetMapping
    public Result selectAll(EmpQueryParam empQueryParam){
        log.info("查询所有班级");
        PageResult<Clazz> PageResult = clazzService.selectAll(empQueryParam);
        return Result.success(PageResult);
    }

    @PostMapping
    public Result sava(@RequestBody Clazz clazz){
        log.info("新增班级：{}",clazz);
        clazzService.sava(clazz);
        return Result.success();
    }

    @GetMapping("/{id}")
    public Result getInfo(@PathVariable Integer id){
        log.info("根据id查询班级：{}",id);
        Clazz clazz=clazzService.getInfo(id);
        return Result.success(clazz);
    }

    @PutMapping
    public Result update(@RequestBody Clazz clazz){
        log.info("根据班级id修改班级信息：{}",clazz.getId());
        clazzService.update(clazz);
        return Result.success();
    }

    @DeleteMapping("/{id}")
    public Result deleteById(@PathVariable Integer id){
        log.info("根据班级id删除班级：{}",id);
        clazzService.deleteById(id);
        return Result.success();
    }

    @GetMapping("/list")
    public Result findAll(){
        List<Clazz> clazzList = clazzService.findAll();
        return Result.success(clazzList);
    }
}
