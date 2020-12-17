package com.echarts.community.web;

import com.echarts.community.config.Result;
import com.echarts.community.entity.Humidity;
import com.echarts.community.service.HumidityService;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author baker_zhuang
 */

@Api(tags="湿度", description="湿度")
@RequestMapping("/humidity")
@RestController
public class HumidityController {

    @Resource
    private HumidityService humidityService;

    @GetMapping("/findAll")
    public Result findAll() {
        List<Humidity> list = humidityService.findAll();
        return Result.ok(list);
    }

}
