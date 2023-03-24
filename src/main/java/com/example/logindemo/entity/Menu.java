package com.example.logindemo.entity;
import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

import java.util.List;

@Data
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Menu {
    private Long id;

    private Long pid;

    private String title;

    private String icon;

    private String href;

//    private String target;

    private List<Menu> children;
}
