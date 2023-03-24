package com.example.logindemo.service;

import com.example.logindemo.entity.User;
import com.example.logindemo.mapper.UserMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserService {


    @Resource
    UserMapper usermapping;

    public User findUserByusername(String username) {

        return usermapping.findUserByusername(username);
    }

}
