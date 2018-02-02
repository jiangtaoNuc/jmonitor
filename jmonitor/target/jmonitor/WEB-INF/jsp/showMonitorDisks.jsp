<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <%@ include file="common.jsp" %>
    <title>系统总览</title>
<script type="application/javascript">

</script>
</head>

<body>
<!-- 导航栏 -->
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <ul class="nav navbar-nav">
            <li style="width: 100px"><a href="/jmonitor/monitorData/getAllRecentData.do">总览</a></li>
            <li ><a href="/jmonitor/monitorMachine/getAllRecentData.do">主机信息</a></li>
            <li><a href="/jmonitor/monitorData/getCpu.do">CPU</a></li>
            <li><a href="#">交换区</a></li>
            <li><a href="#">IO</a></li>
            <li class="active"><a href="/jmonitor/monitorDisk/getRecent3HDiskInfo.do">磁盘</a></li>
            <li><a href="#">进程</a></li>
            <li><a href="#">kafka集群</a></li>
            <li><a href="#">木兰调度</a></li>
            <li><a href="#">日志监控</a></li>
            <li style="float: right" class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    管理 <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="/jmonitor/monitorHost/getAll.do">主机管理</a></li>
                </ul>
            </li>
        </ul>
        <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
                <input id="search_ip" type="text" class="form-control" placeholder="search ip"/>
            </div>
            <button type="button" id="search" class="btn btn-default">提交</button>
        </form>
    </div>
</nav>
<div id="top"></div>
<script type="text/javascript">
    $(document).ready(function(){
        var x_time = [];
        var y_cpu = [];
        var monitorIp = [];

        function createDiv(index,ip,flag){
            //创建一个div_left
            var ip_div_container = document.createElement("div");
            var ip_div_container_attr = document.createAttribute("id");
            ip_div_container_attr.value = ip+"container";
            ip_div_container.setAttributeNode(ip_div_container_attr)
            if(flag!=null && flag == 1){
                //追加到开头
                document.getElementById("top").prepend(ip_div_container);
            }else{
                document.getElementsByTagName("body").item(0).appendChild(ip_div_container);
            }


            var ip_div = document.createElement("div");
            var ip_div_attr = document.createAttribute("id");
            ip_div_attr.value = ip;
            ip_div.setAttributeNode(ip_div_attr);
            var ip_style = document.createAttribute("style");
            ip_div.setAttributeNode(ip_style);
            ip_div.style.float = "left"
            ip_div.style.marginTop="5px";
            ip_div.style.width = "1340px";
            ip_div.style.height = "20px";
            ip_div.style.backgroundColor = "black";
            ip_div.innerHTML="<p style='font-size: 16px;color: #a5acd4'>&nbsp;&nbsp;&nbsp;"+ip+"</p>";
            //把div追加到body

            ip_div_container.appendChild(ip_div);
            var div_left = document.createElement("div");
            //为div创建属性class
            var div_left_attr = document.createAttribute("id");
            div_left_attr.value = "div_left"+index;
            //把属性class = "test"添加到div
            div_left.setAttributeNode(div_left_attr);
            //为div添加样式
            var left_style = document.createAttribute("style");
            div_left.setAttributeNode(left_style);
            div_left.style.float = "left"
            div_left.style.width = "900px";
            div_left.style.height = "200px";
            div_left.style.color = "red";
            //把div追加到body
            ip_div_container.appendChild(div_left);


            //创建一个div_right
            var div_right = document.createElement("div");
            //为div创建属性class
            var div_right_attr = document.createAttribute("id");
            div_right_attr.value = "div_right"+index;
            //把属性class = "test"添加到div
            div_right.setAttributeNode(div_right_attr);
            //为div添加样式
            var right_style = document.createAttribute("style");
            div_right.setAttributeNode(right_style);
            div_right.style.float = "left";
            div_right.style.width = "440px";
            div_right.style.height = "200px";
//            div_right.style.backgroundColor = '#0f375f';
            //把div追加到body
            ip_div_container.appendChild(div_right);
        }
        $("#search").click(function () {
            var ip = $("#search_ip").val();

            if(ip == null || ip ==""){
                return false;
            }else{
                var search_ip_div = document.getElementById(ip+"container");

                if(search_ip_div == null){
                    return false;
                }else{
                    search_ip_div.remove();
                    for(var count=0;count<monitorIp.length;count++){
                        if(monitorIp[count]==ip){
                            createDiv(count,ip,1);
                            <c:forEach items="${sessionScope.get('monitorMaps')}" var="monitorMap">
                            if("${monitorMap.key}"==ip){
                                var temp_x_arr = "${monitorMap.value.add_timeList}";
                                var timeArr = temp_x_arr.split(",");
                                alert(timeArr);
                                var temp_y_arr = "${monitorMap.value.cpu_totalList}";
                                var cpuArr = temp_y_arr.split(",");
                                var temp_cpu_sys = "${monitorMap.value.cpu_sysList}";
                                var cpu_sys_data = temp_cpu_sys.split(",");
                                var temp_cpu_user =  "${monitorMap.value.cpu_userList}";
                                var cpu_user_data = temp_cpu_user.split(",");
                                var div_left = document.getElementById('div_left' + count);
                                var div_left_charts = echarts.init(div_left);
                                var div_right = document.getElementById('div_right' + count);
                                var div_right_charts = echarts.init(document.getElementById('div_right' + count));
                                // Generate data
                                var category = [];
                                var totalData = [];
                                var userData = [];
                                var sysData = [];
                                var sys_pie;
                                var user_pie;
                                var free_pie;

                                for (var i = 0; i < timeArr.length; i++) {
                                    if(i==0){
                                        timeArr[i] = timeArr[i].substring(1);
                                    }
                                    if(i==timeArr.length-1){
                                        timeArr[i] = timeArr[i].substring(0,timeArr[i].length-1);
                                    }
                                    category.push(timeArr[i]);
                                }
                                for(var k=0;k<cpuArr.length;k++){
                                    if(k==0){
                                        cpuArr[k] = cpuArr[k].substring(1);
                                    }
                                    if(k==cpuArr.length-1){
                                        cpuArr[k] = cpuArr[k].substring(0,cpuArr[k].length-1);
                                        free_pie = 100 - cpuArr[k];
                                    }
                                    totalData.push(cpuArr[k]);
                                }
                                for(var k=0;k<cpu_user_data.length;k++){
                                    if(k==0){
                                        cpu_user_data[k] = cpu_user_data[k].substring(1);
                                    }
                                    if(k==cpu_user_data.length-1){
                                        cpu_user_data[k] = cpu_user_data[k].substring(0,cpu_user_data[k].length-1);
                                        user_pie = cpu_user_data[k];
                                    }
                                    userData.push(cpu_user_data[k]);
                                }
                                for(var k=0;k<cpu_sys_data.length;k++){
                                    if(k==0){
                                        cpu_sys_data[k] = cpu_sys_data[k].substring(1);
                                    }
                                    if(k==cpu_sys_data.length-1){
                                        cpu_sys_data[k] = cpu_sys_data[k].substring(0,cpu_sys_data[k].length-1);
                                        sys_pie = cpu_sys_data[k];
                                    }
                                    sysData.push(cpu_sys_data[k]);
                                }
                                var cpu_line_option = {
                                    backgroundColor: '#0f375f',
                                    tooltip: {
                                        trigger: 'axis',
                                        axisPointer: {
                                            type: 'shadow',
                                            label: {
                                                show: true,
                                                backgroundColor: '#333'
                                            }
                                        }
                                    },
                                    legend: {
                                        data: ['使用总量', '用户空间','系统占用'],
                                        textStyle: {
                                            color: '#85cc80'
                                        }
                                    },
                                    xAxis: {
                                        data: category,
                                        axisLine: {
                                            lineStyle: {
                                                color: '#ccc'
                                            }
                                        }
                                    },
                                    yAxis: {
                                        splitLine: {show: false},
                                        axisLine: {
                                            lineStyle: {
                                                color: '#ccc'
                                            }
                                        }
                                    },
                                    series: [{
                                        name: '使用总量',
                                        type: 'line',
                                        smooth: true,
                                        showAllSymbol: true,
                                        symbol: 'emptyCircle',
                                        symbolSize: 15,
                                        data: totalData
                                    }, {
                                        name: '用户空间',
                                        type: 'bar',
                                        stack: 'mem',
                                        barWidth: 10,
                                        itemStyle: {
                                            normal: {
                                                barBorderRadius: 5,
                                                color: new echarts.graphic.LinearGradient(
                                                    0, 0, 0, 1,
                                                    [
                                                        {offset: 0, color: '#14c8d4'},
                                                        {offset: 1, color: '#43eec6'}
                                                    ]
                                                )
                                            }
                                        },
                                        data: userData
                                    },{
                                        name: '系统占用',
                                        type: 'bar',
                                        stack: 'mem',

                                        itemStyle: {
                                            normal: {
                                                color: '#3b6818'
                                            }
                                        },
                                        symbolRepeat: true,
                                        symbolSize: [12, 4],
                                        symbolMargin: 1,
                                        z: -10,
                                        data: sysData
                                    }]
                                };
                                div_left_charts.setOption(cpu_line_option);
                                var cpu_pie_option = {
                                    backgroundColor: '#0f375f',
                                    title : {
                                        text: '内存占比',
                                        textStyle:{
                                            color:'#5ef3ff'
                                        },
                                        x:'center'
                                    },
                                    tooltip : {
                                        trigger: 'item',
                                        formatter: "{a} <br/>{b} : {c} ({d}%)"
                                    },
                                    legend: {
                                        orient: 'vertical',
                                        left: 'left',
                                        textStyle:{
                                            color:'#5ef3ff',
                                        },
                                        data: ['用户空间','系统占用','剩余内存']
                                    },
                                    series : [
                                        {
                                            name: '内存占比',
                                            type: 'pie',
                                            radius : '65%',
                                            center: ['50%', '60%'],
                                            data:[
                                                {value:user_pie, name:'用户空间'},
                                                {value:sys_pie, name:'系统占用'},
                                                {value:free_pie, name:'剩余内存'}
                                            ],
                                            label: {
                                                textStyle: {
                                                    color: '#5ef3ff'
                                                }
                                            },
                                            labelLine: {
                                                lineStyle: {
                                                    color: '#ecee9f'
                                                }
                                            },

                                            itemStyle: {
                                                emphasis: {
                                                    shadowBlur: 10,
                                                    shadowOffsetX: 0,
                                                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                                                }
                                            }
                                        }
                                    ]
                                };
                                div_right_charts.setOption(cpu_pie_option);
                            }
                            </c:forEach>

                        }
                    }
                }
            }
        });
        var count=0;
        <c:forEach items="${monitorDiskMaps}" var="monitorDiskMap">
        monitorIp.push("${monitorDiskMap.key}");
        createDiv(count,"${monitorDiskMap.key}");
        var temp_x_arr = "${monitorDiskMap.value.add_timeList}";
        var timeArr = temp_x_arr.split(",");
        var temp_mount = "${monitorDiskMap.value.diskMountedOnList}";
        var mountArr = temp_mount.split(",");
        var temp_size = "${monitorDiskMap.value.diskSizeList}";
        var sizeArr = temp_size.split(",");
        var temp_per = "${monitorDiskMap.value.diskUsePerLis}";
        var perArr = temp_per.split(",");
        var div_left = document.getElementById('div_left' + count);
        var div_left_charts = echarts.init(div_left);
        var div_right = document.getElementById('div_right' + count);
        div_right.cr



        // Generate data
        var category = [];
        var mountData = [];
        var sizeData = [];
        var perData_1 = [];
        var perData_2 = [];
        var perData_3 = [];
        var sys_pie;
        var user_pie;
        var free_pie;

        for (var i = 0; i < 3; i++) {
            if(i==0){
                timeArr[i] = timeArr[i].substring(1);
            }
            if(i==timeArr.length-1) {
                timeArr[i] = timeArr[i].substring(0, timeArr[i].length - 1);
            }
            category.push(timeArr[i]);
        }
        for (var i = 0; i < mountArr.length; i=i+3) {
            if(i==0){
                mountArr[i] = mountArr[i].substring(1);
            }
            if(i==mountArr.length-1){
                mountArr[i] = mountArr[i].substring(0,mountArr[i].length-1);
            }
            mountData.push(mountArr[i]);
        }
        for (var i = 0; i < sizeArr.length; i++) {
            if(i==0){
                sizeArr[i] = sizeArr[i].substring(1);
            }
            if(i==sizeArr.length-1){
                sizeArr[i] = sizeArr[i].substring(0,sizeArr[i].length-1);
            }
            sizeData.push(sizeArr[i]);
        }
        for (var i = 0; i < perArr.length; i++) {
            if(i==0){
                perArr[i] = perArr[i].substring(1);
            }
            if(i==perArr.length-1){
                perArr[i] = perArr[i].substring(0,perArr[i].length-1);
            }

            if(i%3==0){
                perData_1.push(perArr[i]);
            }else if(i%3==1){
                perData_2.push(perArr[i]);
            }else if(i%3==2){
                perData_3.push(perArr[i]);
            }
        }
        var Boption = {
            tooltip : {
                trigger: 'axis',
                axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                    type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                }
            },

            legend: {
                data:category
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis : [
                {
                    type : 'category',
                    data : mountData
                }
            ],
            yAxis : [
                {
                    axisLabel: {
                        formatter: '{value} %'
                     }
                }
            ],
            series : [
                {
                    name:category[0],
                    type: 'bar',
                    data:perData_1
                },
                {
                    name:category[1],
                    type:'bar',
                    data:perData_2
                },
                {
                    name:category[2],
                    type:'bar',
                    data:perData_3
                }
            ]
        };
        div_left_charts.setOption(Boption);
        count++;
        </c:forEach>
    });
</script>

</body>
</html>