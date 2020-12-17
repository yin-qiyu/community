package com.echarts.community.mapper;

import com.echarts.community.entity.IOS;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IOSMapper {

    List<IOS> findAll();

}
