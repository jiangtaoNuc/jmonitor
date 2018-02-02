package com.asiainfo.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.asiainfo.pojo.MonitorCpu;
import com.asiainfo.pojo.MonitorData;
import com.asiainfo.pojo.Monitorhost;
import com.asiainfo.service.IMonitorDataService;
import com.asiainfo.service.IMonitorHostService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * Created by jiangtao on 2018/1/23.
 */

@Controller
@RequestMapping("/monitorData")
@SessionAttributes("monitorMaps")
public class MonitorDataController {

    @Resource
    private IMonitorDataService monitorDataService;

    @RequestMapping("/getAllRecentData")
    public String getAll(HttpServletRequest request, Model model){
        List<MonitorData> monitorDatas = new ArrayList<MonitorData>();
        monitorDatas = this.monitorDataService.getAllRecentData();
        System.out.println(monitorDatas.size());
        model.addAttribute("monitorDatas",monitorDatas);
        //model.addAllAttributes(monitorHosts);
        System.out.println(model);
        return "showMonitorDatas";
    }

    @RequestMapping("/getCpu")
    public String getCpu(HttpSession session, Model model){
        List<MonitorData> monitorDatas = this.monitorDataService.getCpu();

        for(int i=0;i<monitorDatas.size();i++){
            System.out.println(monitorDatas.get(i).getIp()+":" +
                    ""+monitorDatas.get(i).getCpu_sys()+":" +
                    ""+monitorDatas.get(i).getAdd_time());
        }
        Map<String,MonitorCpu> monitorMaps = new HashMap<String,MonitorCpu>();
        String ip = "";
        Double cpu_sys = 0D;
        Double cpu_user = 0D;
        Double total_use = 0D;
        String add_time = "";

        for(int i=0;i<monitorDatas.size();i++){
            ip= monitorDatas.get(i).getIp();
            cpu_sys = monitorDatas.get(i).getCpu_sys();
            cpu_user = monitorDatas.get(i).getCpu_user();
            add_time = monitorDatas.get(i).getAdd_time().split(" ")[1];
            total_use = cpu_sys + cpu_user;

            if(monitorMaps.containsKey(ip)){
                MonitorCpu monitorCpu = new MonitorCpu(new ArrayList(),new ArrayList(),ip);
                monitorCpu = monitorMaps.get(ip);
                monitorCpu.getCpu_sysList().add(cpu_sys);
                monitorCpu.getCpu_userList().add(cpu_user);
                monitorCpu.getAdd_timeList().add(add_time);
                monitorCpu.getCpu_totalList().add(total_use);
                monitorCpu.setIp(ip);
            }else{
                MonitorCpu monitorCpu = new
                            MonitorCpu(new ArrayList(),new ArrayList(),new ArrayList(),new ArrayList(),ip);
                monitorCpu.getAdd_timeList().add(add_time);
                monitorCpu.getCpu_totalList().add(total_use);
                monitorCpu.getCpu_sysList().add(cpu_sys);
                monitorCpu.getCpu_userList().add(cpu_user);
                monitorCpu.setIp(ip);
                monitorMaps.put(ip,monitorCpu);
            }

        }
        model.addAttribute("monitorMaps",monitorMaps);
        session.setAttribute("monitorMaps",monitorMaps);
        System.out.println(monitorMaps);
        return "showMonitorCpus";
    }


}
