package com.echarts.community.service.impl;

import com.echarts.community.entity.IOS;
import com.echarts.community.mapper.IOSMapper;
import com.echarts.community.service.IOSService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

@Service("inout")
public class IOSServiceImpl implements IOSService {

    @Resource
    private IOSMapper IOSMapper;


    @Override
    public List<IOS> findAll() {
        List<IOS> list = IOSMapper.findAll();
        return list;
    }

}
