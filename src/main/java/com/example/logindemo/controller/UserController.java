package com.example.logindemo.controller;

import com.alibaba.fastjson2.JSONObject;
import com.example.logindemo.entity.User;
import com.example.logindemo.service.MenuService;
import com.example.logindemo.service.RoleService;
import com.example.logindemo.service.UserService;
import com.example.logindemo.utils.CommonUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    RoleService roleService;

    @Autowired
    UserService userService;

    @Autowired
    MenuService menuservice;



    @GetMapping("/menus")
    @ResponseBody
    public Map<String, Object> menus() {
        String loginUsername = CommonUtils.getLoginUser();
        User loginUser = userService.findUserByusername(loginUsername);
        log.info("当前登录用户名"+loginUsername+"   用户ID"+loginUser.getId());
        JSONObject initjson=new JSONObject(menuservice.menu(loginUser.getId()));

        return initjson;
    }


}
