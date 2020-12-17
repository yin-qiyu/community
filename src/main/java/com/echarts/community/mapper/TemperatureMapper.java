package com.echarts.community.mapper;

import com.echarts.community.entity.Temperature;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TemperatureMapper {

    List<Temperature> findAll();


}
