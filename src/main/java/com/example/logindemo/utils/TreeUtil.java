package com.example.logindemo.utils;

import com.example.logindemo.entity.Menu;

import java.util.ArrayList;
import java.util.List;

public class TreeUtil {
    public static List<Menu> toTree(List<Menu> treeList, Long pid) {
        List<Menu> retList = new ArrayList<Menu>();
        for (Menu parent : treeList) {
            if (pid.equals(parent.getPid())) {
                retList.add(findChildren(parent, treeList));
            }
        }
        return retList;
    }
    private static Menu findChildren(Menu parent, List<Menu> treeList) {
        for (Menu child : treeList) {
            if (parent.getId().equals(child.getPid())) {
                if (parent.getChildren() == null) {
                    parent.setChildren(new ArrayList<>());
                }
                parent.getChildren().add(findChildren(child, treeList));
            }
        }
        return parent;
    }

}
