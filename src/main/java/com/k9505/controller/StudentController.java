package com.k9505.controller;

import com.k9505.pojo.Student;
import com.k9505.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/con")
public class StudentController {
    @Autowired
    private StudentService studentService;
    @RequestMapping("/show")
    public ModelAndView selectStudent(ModelAndView mav){
        List<Student> studentList = studentService.getStudentList();
        mav.addObject("studentList",studentList);
        mav.setViewName("show");
        return mav;
    }
    @RequestMapping("/show1")
    @ResponseBody
    public List<Student> show1(){
        List<Student> studentList1 = studentService.getStudentList();
        return studentList1;
    }
}
