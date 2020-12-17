package com.echarts.community.mapper;

import com.echarts.community.entity.Humidity;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface HumidityMapper {

    List<Humidity> findAll();


}
