package com.echarts.community.entity;
import lombok.Data;

import java.time.LocalDateTime;

@Data
public class Temperature {

    private Integer id;

    private LocalDateTime createTime;

    private LocalDateTime testTime;

    private String hours;

    private String temperature;

    private String address;
}
