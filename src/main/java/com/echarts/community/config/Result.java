package com.echarts.community.config;

import lombok.Data;

import javax.annotation.Resource;

/**
 * 统一的返回数据格式
 */
@Data
public class Result {
    public Integer code;
    public String msg;
    public Long count;
    public Object data;


    public static Result ok(Object data) {
        Result result = new Result();
        result.code = 0;
        result.msg ="成功";
        result.data = data;
        return result;
    }

    public static Result fail() {
        Result result = new Result();
        result.code = 500;
        result.msg ="失败";
        result.data = null;
        return result;
    }
}
