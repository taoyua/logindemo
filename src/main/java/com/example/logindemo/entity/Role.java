package com.example.logindemo.entity;


import lombok.Data;

@Data
public class Role {
    private long id;
    private String name;

    //角色编码
    private String sn;

    //角色描述
    private String desc;

}