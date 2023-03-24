package com.example.logindemo.mapper;

import com.example.logindemo.entity.Role;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface RoleMapper {

    @Select("SELECT r.*\n" +
            "from role r\n" +
            "JOIN t_user_role u on r.id=u.roleid\n" +
            "where u.userid=#{userid}")
    List<Role> listRoleByuserid(long userid);//根据userID，查询该用户的角色
}
