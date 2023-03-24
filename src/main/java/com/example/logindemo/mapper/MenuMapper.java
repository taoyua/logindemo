package com.example.logindemo.mapper;

import com.example.logindemo.entity.Menu;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MenuMapper {

    @Select("SELECT sr.id,sr.pid pid,sr.title,sr.icon,sr.href\n" +
            "FROM treemenu sr where STATUS = 1  ORDER BY  sort")
    List<Menu> ListPermissionByuserid(long userid);


    @Select("SELECT sr.id,sr.pid pid,sr.title,sr.icon,sr.href,sr.target FROM treemenu sr")
    List<Menu> listMenuByRoleid(long id);

//    @Select("SELECT sr.id,sr.pid pid,sr.title,sr.icon,sr.href,sr.target\n" +
//            "FROM sys_resources sr\n" +
//            "join role_treemenu st on st.menu_id=sr.id\n" +
//            "and st.role_id=#{id}")
//    List<MenuVo> listMenuByRoleid(long id);
}
