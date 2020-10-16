package com.example.demo1.controller;

import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/demo")
public class demoController {

    @RequestMapping("/add")
    public String add(String st){
        return "添加新的字符"+st;
    }

    @RequestMapping("/sub")
    public String sub(String st){
        if (st.length()<=1){
            return st+1;
        }else {
            return "当前字符："+st.substring(0,2);
        }
    }
}
