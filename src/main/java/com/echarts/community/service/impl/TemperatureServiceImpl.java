package com.echarts.community.service.impl;

import com.echarts.community.entity.Temperature;
import com.echarts.community.mapper.TemperatureMapper;
import com.echarts.community.service.TemperatureService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("temperature")
public class TemperatureServiceImpl implements TemperatureService {

    @Resource
    private TemperatureMapper temperatureMapper;


    @Override
    public List<Temperature> findAll() {
        List<Temperature> list = temperatureMapper.findAll();
        return list;
    }

}
