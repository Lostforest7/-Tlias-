package org.example.controller;

import org.example.pojo.PageResult;
import org.example.pojo.Result;
import org.example.pojo.Student;
import org.example.pojo.StudentQueryParam;
import org.example.service.StudentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/students")
public class StudentController {
    private static final Logger log= LoggerFactory.getLogger(StudentController.class);

    @Autowired
    private StudentService studentService;

    @GetMapping
    public Result selectAll(StudentQueryParam studentQueryParam){
        log.info("查询所以学生");
        PageResult<Student> pageResult=studentService.selectAll(studentQueryParam);
        return Result.success(pageResult);
    }

    @PostMapping
    public Result sava(@RequestBody Student student){
        log.info("新增学生：{}",student);
        studentService.sava(student);
        return Result.success();
    }

    @GetMapping("/{id}")
    public Result getInfo(@PathVariable Integer id){
        log.info("根据id查询学生：{}",id);
        Student student=studentService.getInfo(id);
        return Result.success(student);
    }

    @PutMapping
    public Result updateById(@RequestBody Student student){
        log.info("根据id修改学生信息：{}",student.getId());
        studentService.updateById(student);
        return Result.success();
    }

    @DeleteMapping("/{ids}")
    public Result delete(@PathVariable("ids") List<Integer> ids){
        log.info("根据id删除学生：{}",ids);
        studentService.delete(ids);
        return Result.success();
    }

    @PutMapping("/violation/{id}/{score}")
    public Result violation(@PathVariable Integer id,@PathVariable Integer score){
        log.info("根据学生id：{}扣{}分",id,score);
        studentService.violation(id,score);
        return Result.success();
    }
}
