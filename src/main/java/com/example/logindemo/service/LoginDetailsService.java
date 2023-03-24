package com.example.logindemo.service;

import com.example.logindemo.entity.Role;
import com.example.logindemo.entity.User;
import com.example.logindemo.service.RoleService;
import com.example.logindemo.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Slf4j
@Component
public class LoginDetailsService implements org.springframework.security.core.userdetails.UserDetailsService {

    @Autowired
    UserService userService;

    @Autowired
    RoleService roleService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {//获取数据库用户
        User user= userService.findUserByusername(username);
        if(user==null){
            throw new UsernameNotFoundException("用户不存在");
        }else{
            log.info("查到用户");
            Set authorities=new HashSet<>();
            List<Role> roles = roleService.listRoleByuserid(user.getId());
            for(Role role:roles) {
                authorities.add(new SimpleGrantedAuthority("ROLE_"+role.getName()));
            }
//            authorities.add(new SimpleGrantedAuthority("Role_管理员"));
            return new org.springframework.security.core.userdetails.User(user.getUsername(),user.getPassword(),
                    true,true,true,true,authorities);

        }



    }





}