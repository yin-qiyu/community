package com.echarts.community.entity;
import	java.time.LocalDateTime;

import lombok.Data;

@Data
public class Pm {
    private Integer id;

    private LocalDateTime createTime;

    private LocalDateTime testTime;

    private String hours;

    private String pm;
}
