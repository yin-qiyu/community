package com.echarts.community.controller;

import com.echarts.community.config.Result;
import com.echarts.community.entity.Pm;
import com.echarts.community.service.PmService;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author baker_zhuang
 */

@Api(tags="PM2.5", description="湿度")
@RequestMapping("/pm")
@RestController
public class PmController {

    @Resource
    private PmService pmService;


    @GetMapping("/findAll")
    public Result findAll() {
        List<Pm> list = pmService.findAll();
        return Result.ok(list);
    }

}
