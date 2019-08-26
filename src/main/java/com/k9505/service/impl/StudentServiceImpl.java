package com.k9505.service.impl;

import com.k9505.mapper.StudentMapper;
import com.k9505.service.StudentService;
import com.k9505.pojo.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;
    @Override
    public List<Student> getStudentList() {
        return studentMapper.selectByExample(null);
    }
}
