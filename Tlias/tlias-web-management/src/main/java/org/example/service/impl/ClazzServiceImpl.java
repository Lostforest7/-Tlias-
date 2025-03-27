package org.example.service.impl;

import org.example.mapper.ClazzMapper;
import org.example.pojo.*;
import org.example.service.ClazzService;
import org.example.service.EmpLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Service
public class ClazzServiceImpl implements ClazzService {

    @Autowired
    private ClazzMapper clazzMapper;
    @Autowired
    private EmpLogService empLogService;

    @Override
    public PageResult<Clazz> selectAll(EmpQueryParam empQueryParam) {
        Long count=clazzMapper.count();
        empQueryParam.setPage((empQueryParam.getPage()-1)*empQueryParam.getPageSize());
        LocalDate now = LocalDate.now();
        List<Clazz> clazz = clazzMapper.selectAll(empQueryParam,now);
        return new PageResult<>(count,clazz);
    }

    @Transactional(rollbackFor = {Exception.class})
    @Override
    public void sava(Clazz clazz) {
        clazz.setCreateTime(LocalDateTime.now());
        clazz.setUpdateTime(LocalDateTime.now());
        clazzMapper.insert(clazz);
        EmpLog clazzLog = new EmpLog(null,LocalDateTime.now(),"新增班级："+clazz);
        empLogService.insertLog(clazzLog);
    }

    @Override
    public Clazz getInfo(Integer id) {
        return clazzMapper.getById(id);
    }

    @Override
    public void update(Clazz clazz) {
        clazz.setUpdateTime(LocalDateTime.now());
        clazzMapper.update(clazz);
    }

    @Override
    public void deleteById(Integer id) {
        clazzMapper.delete(id);
    }

    @Override
    public List<Clazz> findAll() {
        return clazzMapper.findAll();
    }

    /*@Override
    public List<Emp> selectEmp() {
        List<Emp> name=clazzMapper.selectEmp();
        return name;
    }*/
}
