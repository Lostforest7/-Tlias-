package org.example.controller;

import org.example.pojo.ClazzCountOption;
import org.example.pojo.JobOption;
import org.example.pojo.Result;
import org.example.service.ReportService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/report")
public class ReportController {
    private static final Logger log= LoggerFactory.getLogger(ReportController.class);
    @Autowired
    private ReportService reportService;

    @GetMapping("/empJobData")
    public Result getEmpJobData(){
        log.info("统计员工职位人数");
        JobOption jobOption=reportService.getEmpJobData();
        return Result.success(jobOption);
    }

    @GetMapping("/empGenderData")
    public Result getEmpGenderData(){
        log.info("统计员工性别人数");
        List<Map<String,Object>> jobOption=reportService.getEmpGenderData();
        return Result.success(jobOption);
    }

    @GetMapping("/studentCountData")
    public Result getStudentCountData(){
        log.info("统计各班级人数");
        ClazzCountOption clazzCountOption=reportService.getStudentCountData();
        return Result.success(clazzCountOption);
    }

    @GetMapping("/studentDegreeData")
    public Result getStudentDegreeData(){
        log.info("统计学员学历信息");
        List<Map<String,Object>> list=reportService.getStudentDegreeData();
        return Result.success(list);
    }
}
