package com.example.logindemo.utils;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

public class CommonUtils {
    public static String getLoginUser(){
        //获取登录认证对象
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        //得到认证的主体（登录用户）

        if(authentication!=null) {
            return authentication.getName();
        }
        return null;
    }
}
