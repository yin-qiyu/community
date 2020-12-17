package com.echarts.community.entity;

import lombok.Data;

import java.time.LocalDateTime;

/**
 * 实体类：与数据库的表一一对应，字段也一一对应，用来映射数据库的表数据，例如当数据库查询到多条结果后可以映射为这个实体类的结合，
 * 在resource/mapper的文件夹里可以看到此类的属性和数据库字段的对应
 */
@Data
public class IOS {

    private Integer id;

    private LocalDateTime createTime;

    private LocalDateTime testTime;

    private String hours;

    private String count;

    private String type;
}
