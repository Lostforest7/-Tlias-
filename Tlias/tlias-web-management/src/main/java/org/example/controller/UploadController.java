package org.example.controller;


import org.example.pojo.Result;
import org.example.utils.AliyunOSSOperator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
public class UploadController {
    private static final Logger log= LoggerFactory.getLogger(UploadController.class);

    //本地磁盘储存方案
    /*@PostMapping("/upload")
    public Result upload(String name, Integer age, MultipartFile file){
        log.info("上传文件:{},{},{}",name,age,file);
        return Result.success();
    }*/
    @Autowired
    private AliyunOSSOperator aliyunOSSOperator;
    @PostMapping("/upload")
    public Result upload(MultipartFile file) throws Exception {
        log.info("文件上传：{}",file.getOriginalFilename());
        String url = aliyunOSSOperator.upload(file.getBytes(), file.getOriginalFilename());
        log.info("文件上传OSS，url:{}",url);
        return Result.success(url);
    }
}
