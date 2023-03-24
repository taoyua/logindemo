package com.example.logindemo.config;

import com.alibaba.fastjson2.JSON;
import com.example.logindemo.utils.Result;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
public class MySecritySuccessHandler implements AuthenticationSuccessHandler {
    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {

        httpServletResponse.setStatus(HttpServletResponse.SC_OK);
        httpServletResponse.setContentType("application/json;charset=utf-8");
        Result result = new Result();
        result.setRespcode("0000");
        result.setRespmsg("登录成功");
        String res = JSON.toJSONString(result);
        httpServletResponse.getWriter().print(res);
    }
}
