package com.example.logindemo.config;

import com.alibaba.fastjson2.JSON;

import com.example.logindemo.utils.Result;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
public class MySecrityFailureHandler implements AuthenticationFailureHandler {


    @Override
    public void onAuthenticationFailure(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AuthenticationException e) throws IOException, ServletException {

        httpServletResponse.setStatus(HttpServletResponse.SC_FORBIDDEN);
        httpServletResponse.setContentType("application/json;charset=utf-8");
        Result result = new Result();
        result.setRespcode("1111");
        result.setRespmsg("登录失败！");
        String res = JSON.toJSONString(result);
        httpServletResponse.getWriter().print(res);
    }
}