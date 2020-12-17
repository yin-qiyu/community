$(function () {
    echarts_1();
    echarts_2();
    echarts_4();
    echarts_5();
    
    function echarts_1() {
        var myChart = echarts.init(document.getElementById('echart1'));
        let xdata = [];
        let datas1 = [];
        let datas2 = [];
        let datas3 = [];
        let datas4 = [];
        let option = {
            tooltip:{
                show:true,
                formatter:function(params) {
                    return params.seriesName+":<br/>"+params.name+"时:"+params.value+"℃";
                }
            },
            xAxis: {
                type: 'category',
                axisLine: {
                    lineStyle: {
                        color: '#FFFFFF'
                    }
                },
                data: xdata
            },
            yAxis: {
                type: 'value',
                axisLine: {
                    lineStyle: {
                        color: '#FFFFFF'
                    }
                },
                splitLine: {
                    show: false
                }
            },
            series: [{
                name:'位置1',
                data: datas1,
                type: 'line',
                smooth: true
            },{
                name:'位置2',
                data: datas2,
                type: 'line',
                smooth: true
            },{
                name:'位置3',
                data: datas3,
                type: 'line',
                smooth: true
            },{
                name:'位置4',
                data: datas4,
                type: 'line',
                smooth: true
            }]
        };
        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: "/humidity/findAll",
            success: function (result) {
                for(let i=0;i<result.data.length;i++){
                    if(result.data[i].address==='1'){
                        xdata.push(result.data[i].hours)
                        datas1.push(result.data[i].humidity)
                    }else if(result.data[i].address==='2'){
                        datas2.push(result.data[i].humidity)
                    }else if(result.data[i].address==='3'){
                        datas3.push(result.data[i].humidity)
                    }else if(result.data[i].address==='4'){
                        datas4.push(result.data[i].humidity)
                    }
                }
                option.xAxis.data = xdata;
                option.series[0].data = datas1;
                option.series[1].data = datas2;
                option.series[2].data = datas3;
                option.series[3].data = datas4;
                myChart.setOption(option);
            },
            error: function (e) {
                console.log(e.status);
            }
        });
        window.addEventListener("resize", function () {
            myChart.resize();
        });
    }

    function echarts_2() {
        var myChart = echarts.init(document.getElementById('echart2'));
        let xdata = [];
        let datas = [];
        let option = {
            tooltip: {
                trigger: 'axis',
                axisPointer: {type: 'shadow'}
            },
            grid: {
                left: '0%',
                top: '10px',
                right: '0%',
                bottom: '4%',
                containLabel: true
            },
            xAxis: [{
                type: 'category',
                data: xdata,
                axisLine: {
                    show: true,
                    lineStyle: {
                        color: "rgba(255,255,255,.1)",
                        width: 1,
                        type: "solid"
                    },
                },

                axisTick: {
                    show: false,
                },
                axisLabel: {
                    interval: 0,
                    rotate: 50,
                    show: true,
                    splitNumber: 15,
                    textStyle: {
                        color: "rgba(255,255,255,.6)",
                        fontSize: '12',
                    },
                },
            }],
            yAxis: [{
                type: 'value',
                axisLabel: {
                    //formatter: '{value} %'
                    show: true,
                    textStyle: {
                        color: "rgba(255,255,255,.6)",
                        fontSize: '12',
                    },
                },
                axisTick: {
                    show: false,
                },
                axisLine: {
                    show: true,
                    lineStyle: {
                        color: "rgba(255,255,255,.1	)",
                        width: 1,
                        type: "solid"
                    },
                },
                splitLine: {
                    lineStyle: {
                        color: "rgba(255,255,255,.1)",
                    }
                }
            }],
            series: [{
                type: 'bar',
                data: datas,
                barWidth: '35%', //柱子宽度
                itemStyle: {
                    normal: {
                        color: '#27d08a',
                        opacity: 1,
                        barBorderRadius: 5,
                    }
                }
            }]
        };
        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: "/pm/findAll",
            success: function (result) {
                for(let i=0;i<result.data.length;i++){
                    xdata.push(result.data[i].hours)
                    datas.push(result.data[i].pm)
                }
                option.xAxis.data = xdata;
                option.series[0].data = datas;
                myChart.setOption(option);
            },
            error: function (e) {
                console.log(e.status);
            }
        });
        window.addEventListener("resize", function () {
            myChart.resize();
        });
    }

    function echarts_5() {
        var myChart = echarts.init(document.getElementById('echart5'));
        let xdata = [];
        let indata = [];
        let outdata = [];
        let option = {
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    lineStyle: {
                        color: '#dddc6b'
                    }
                }
            },
            legend: {
                top: '0%',
                data: ['进入', '出去'],
                textStyle: {
                    color: 'rgba(255,255,255,.5)',
                    fontSize: '12',
                }
            },
            grid: {
                left: '10',
                top: '30',
                right: '10',
                bottom: '10',
                containLabel: true
            },
            xAxis: [{
                type: 'category',
                boundaryGap: false,
                axisLabel: {
                    textStyle: {
                        color: "rgba(255,255,255,.6)",
                        fontSize: 12,
                    },
                },
                axisLine: {
                    lineStyle: {
                        color: 'rgba(255,255,255,.2)'
                    }

                },
                data: xdata,
            },{
                axisPointer: {show: false},
                axisLine: {show: false},
                position: 'bottom',
            }],
            yAxis: [{
                type: 'value',
                axisTick: {show: false},
                axisLine: {
                    lineStyle: {
                        color: 'rgba(255,255,255,.1)'
                    }
                },
                axisLabel: {
                    textStyle: {
                        color: "rgba(255,255,255,.6)",
                        fontSize: 12,
                    },
                },
                splitLine: {
                    lineStyle: {
                        color: 'rgba(255,255,255,.1)'
                    }
                }
            }],
            series: [{
                name: '进入',
                type: 'line',
                smooth: true,
                symbol: 'circle',
                symbolSize: 5,
                showSymbol: false,
                lineStyle: {
                    normal: {
                        color: '#0184d5',
                        width: 2
                    }
                },
                areaStyle: {
                    normal: {
                        color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                            offset: 0,
                            color: 'rgba(1, 132, 213, 0.4)'
                        }, {
                            offset: 0.8,
                            color: 'rgba(1, 132, 213, 0.1)'
                        }], false),
                        shadowColor: 'rgba(0, 0, 0, 0.1)',
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#0184d5',
                        borderColor: 'rgba(221, 220, 107, .1)',
                        borderWidth: 12
                    }
                },
                data: indata,
            },{
                name: '出去',
                type: 'line',
                smooth: true,
                symbol: 'circle',
                symbolSize: 5,
                showSymbol: false,
                lineStyle: {
                    normal: {
                        color: '#00d887',
                        width: 2
                    }
                },
                areaStyle: {
                    normal: {
                        color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                            offset: 0,
                            color: 'rgba(0, 216, 135, 0.4)'
                        }, {
                            offset: 0.8,
                            color: 'rgba(0, 216, 135, 0.1)'
                        }], false),
                        shadowColor: 'rgba(0, 0, 0, 0.1)',
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#00d887',
                        borderColor: 'rgba(221, 220, 107, .1)',
                        borderWidth: 12
                    }
                },
                data: outdata,
            }]
        };
        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: "/ios/findAll",
            success: function (result) {
                for(let i=0;i<result.data.length;i++){
                    if(result.data[i].type==='0'){
                        xdata.push(result.data[i].hours)
                        indata.push(result.data[i].count)
                    }else{
                        outdata.push(result.data[i].count)
                    }
                }
                option.xAxis.data = xdata;
                option.series[0].data = indata;
                option.series[1].data = outdata;
                myChart.setOption(option);
            },
            error: function (e) {
                console.log(e.status);
            }
        });
        window.addEventListener("resize", function () {
            myChart.resize();
        });
    }

    function echarts_4() {
        var myChart = echarts.init(document.getElementById('echart4'));
        let xdata = [];
        let datas1 = [];
        let datas2 = [];
        let datas3 = [];
        let datas4 = [];
        let option = {
            xAxis: {
                type: 'category',
                axisLine: {
                    lineStyle: {
                        color: '#FFFFFF'
                    }
                },
                data: xdata,
            },
            yAxis: {
                type: 'value',
                axisLine: {
                    lineStyle: {
                        color: '#FFFFFF'
                    }
                },
                splitLine: {
                    show: false
                }
            },
            series: [{
                name:'位置1',
                data: datas1,
                type: 'line',
                smooth: true
            },{
                name:'位置2',
                data: datas2,
                type: 'line',
                smooth: true
            },{
                name:'位置3',
                data: datas3,
                type: 'line',
                smooth: true
            },{
                name:'位置4',
                data: datas4,
                type: 'line',
                smooth: true
            }]
        };
        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: "/temperature/findAll",
            success: function (result) {
                for(let i=0;i<result.data.length;i++){
                    if(result.data[i].address==='1'){
                        xdata.push(result.data[i].hours)
                        datas1.push(result.data[i].temperature)
                    }else if(result.data[i].address==='2'){
                        datas2.push(result.data[i].temperature)
                    }else if(result.data[i].address==='3'){
                        datas3.push(result.data[i].temperature)
                    }else if(result.data[i].address==='4'){
                        datas4.push(result.data[i].temperature)
                    }
                }
                option.xAxis.data = xdata;
                option.series[0].data = datas1;
                option.series[1].data = datas2;
                option.series[2].data = datas3;
                option.series[3].data = datas4;
                myChart.setOption(option);
            },
            error: function (e) {
                console.log(e.status);
            }
        });
        window.addEventListener("resize", function () {
            myChart.resize();
        });
    }
})
