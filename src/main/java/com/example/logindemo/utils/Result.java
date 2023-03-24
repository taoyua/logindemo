package com.example.logindemo.utils;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Result {
    private String respcode;
    private String respmsg;


    public static Result success(String msg){

        return new Result("200",msg);

    }


    public static Result error(String msg){

        return new Result("500",msg);

    }
}
