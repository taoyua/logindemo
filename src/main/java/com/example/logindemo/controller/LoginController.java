package com.example.logindemo.controller;


import com.example.logindemo.service.LoginDetailsService;
import com.example.logindemo.service.UserService;
import com.example.logindemo.utils.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Slf4j
@Controller
public class LoginController {
    @Autowired
    LoginDetailsService loginDetailsService;


    @RequestMapping("/login")
    public String login1(){
        return "login";

    }

//    @PostMapping("/login")
//    public Result login1(String username, String password, HttpServletRequest request){
//        return loginDetailsService.loadUserByUsername(username);
//
//    }



    @RequestMapping("/signout")
    public String signout(){
        log.info("退出");
        return "login";

    }

    @RequestMapping("/index")
    public String index(){
        log.info("请求到主页中了");
        return "index";

    }

    @RequestMapping("/main")
    public String main(){
        log.info("请求到控制台中了");
        return "main";

    }

    @RequestMapping("/error403")
    public String error403(){

        return "error403";

    }
}
