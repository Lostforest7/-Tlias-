package org.example.service;

import org.example.pojo.ClazzCountOption;
import org.example.pojo.JobOption;

import java.util.List;
import java.util.Map;

public interface ReportService {
    JobOption getEmpJobData();

    List<Map<String,Object>> getEmpGenderData();

    ClazzCountOption getStudentCountData();

    List<Map<String, Object>> getStudentDegreeData();
}
