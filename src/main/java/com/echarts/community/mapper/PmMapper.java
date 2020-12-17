package com.echarts.community.mapper;

import com.echarts.community.entity.Humidity;
import com.echarts.community.entity.Pm;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PmMapper {

    List<Pm> findAll();


}
