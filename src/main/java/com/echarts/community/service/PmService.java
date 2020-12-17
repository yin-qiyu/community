package com.echarts.community.service;


import com.echarts.community.entity.Humidity;
import com.echarts.community.entity.Pm;

import java.util.List;

public interface PmService {

    List<Pm> findAll();

}
