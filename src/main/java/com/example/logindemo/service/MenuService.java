package com.example.logindemo.service;

import com.example.logindemo.entity.Menu;
import com.example.logindemo.entity.Role;
import com.example.logindemo.mapper.MenuMapper;
import com.example.logindemo.utils.TreeUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

@Slf4j
@Service
public class MenuService {
    @Resource
    MenuMapper menuMapper;

    @Resource
    RoleService roleService;

    public Map<String, Object> menu(Long userid) {
        /**
         * 根据用户id获取用户所有角色
         */

        List<Role> roleidList = roleService.listRoleByuserid(userid);
        /**
         * 遍历所有角色，获取list菜单
         */
        Set<Menu> menuSet=new HashSet<>();
        for(Role role:roleidList){
            List<Menu> sysMenuList = menuMapper.listMenuByRoleid(role.getId());
            for(Menu menu :sysMenuList){
                menuSet.add(menu);
            }

        }
        List<Menu> sysmenuList=new ArrayList<>(menuSet);
        //将菜单转为权限树
        List<Menu> menuInfo=menuMapper.ListPermissionByuserid(userid);
        List<Menu> menuTree = new ArrayList<>();
        menuTree= TreeUtil.toTree(menuInfo, 0L);
        Map<String, Object> map = new HashMap<>();
//        Map<String,Object> home = new HashMap<>();
//        Map<String,Object> logo = new HashMap<>();
//        home.put("title","首页");
//        home.put("href","/main");//主页路由,自行定义
//        logo.put("title","后台管理系统");
//        logo.put("image","/static/images/logo.png");//静态资源文件路径,可使用默认的logo.png
//        map.put("homeInfo",home);
//        map.put("logoInfo",logo);
//        map.put("menuInfo", menuTree);
        map.put("data", menuTree);
        log.info("查询到的初始化数据为： "+map.toString());
        return map;
    }

}
