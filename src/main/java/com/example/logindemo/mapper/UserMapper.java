package com.example.logindemo.mapper;


import com.example.logindemo.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapper {

    @Select("select *from admin where username=#{username}")
    User findUserByusername(String username);
}
