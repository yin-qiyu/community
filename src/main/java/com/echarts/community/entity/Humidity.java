package com.echarts.community.entity;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class Humidity {
    private Integer id;

    private LocalDateTime createTime;

    private LocalDateTime testTime;

    private String hours;

    private String humidity;

    private String address;
}
