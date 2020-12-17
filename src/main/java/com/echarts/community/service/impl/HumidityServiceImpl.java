package com.echarts.community.service.impl;

import com.echarts.community.entity.Humidity;
import com.echarts.community.mapper.HumidityMapper;
import com.echarts.community.service.HumidityService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("humidity")
public class HumidityServiceImpl implements HumidityService {

    @Resource
    private HumidityMapper humidityMapper;


    @Override
    public List<Humidity> findAll() {
        List<Humidity> list = humidityMapper.findAll();
        return list;
    }

}
