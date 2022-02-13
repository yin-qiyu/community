package com.echarts.community.controller;

import com.echarts.community.config.Result;
import com.echarts.community.entity.IOS;
import com.echarts.community.service.IOSService;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.util.List;

/**
 * @author baker_zhuang
 */

@Api(tags="进出人员接口", description="进出人员接口")
@RequestMapping("/ios")
@RestController
public class IOSController {

    @Resource
    private IOSService IOSService;


    @GetMapping("/findAll")
    public Result findAll() {
        List<IOS> list = IOSService.findAll();
        return Result.ok(list);
    }

}
