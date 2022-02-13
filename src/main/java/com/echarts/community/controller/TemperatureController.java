package com.echarts.community.controller;

import com.echarts.community.config.Result;
import com.echarts.community.entity.Temperature;
import com.echarts.community.service.TemperatureService;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author baker_zhuang
 */

@Api(tags="温度", description="温度")
@RequestMapping("/temperature")
@RestController
public class TemperatureController {

    @Resource
    private TemperatureService temperatureService;

    @GetMapping("/findAll")
    public Result findAll() {
        List<Temperature> list = temperatureService.findAll();
        return Result.ok(list);
    }


}
