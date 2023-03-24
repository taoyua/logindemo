package com.example.logindemo.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;


@Data
public class User {
    private Long id;
    private String username;
    private String password;
    private String tel;
    private String sex;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String createTime;


}
