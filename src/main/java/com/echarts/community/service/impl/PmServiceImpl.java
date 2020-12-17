package com.echarts.community.service.impl;

import com.echarts.community.entity.Pm;
import com.echarts.community.mapper.PmMapper;
import com.echarts.community.service.PmService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("pm")
public class PmServiceImpl implements PmService {

    @Resource
    private PmMapper pmMapper;


    @Override
    public List<Pm> findAll() {
        List<Pm> list = pmMapper.findAll();
        return list;
    }

}
