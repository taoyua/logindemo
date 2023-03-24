package com.example.logindemo.service;

import com.example.logindemo.entity.Role;
import com.example.logindemo.mapper.RoleMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RoleService {
    @Resource
    private RoleMapper roleMapper;

    public List<Role> listRoleByuserid(long userid) {
        List<Role> roles = roleMapper.listRoleByuserid(userid);
        return roles;
    }
}
