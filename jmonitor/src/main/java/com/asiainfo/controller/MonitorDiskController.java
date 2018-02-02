package com.asiainfo.controller;

import com.asiainfo.pojo.MonitorCpu;
import com.asiainfo.pojo.MonitorData;
import com.asiainfo.pojo.MonitorDisk;
import com.asiainfo.pojo.MonitorReturnDisks;
import com.asiainfo.service.IMonitorDataService;
import com.asiainfo.service.IMonitorDiskService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by jiangtao on 2018/1/23.
 */

@Controller
@RequestMapping("/monitorDisk")
@SessionAttributes("monitorDiskMaps")
public class MonitorDiskController {

    @Resource
    private IMonitorDiskService monitorDiskService;

    @RequestMapping("/getRecent3HDiskInfo")
    public String getRecent3HDiskInfo(HttpSession session, Model model){
        List<MonitorDisk> monitorDisks = new ArrayList<MonitorDisk>();
        monitorDisks = this.monitorDiskService.getRecent3HDiskInfo();
        Map<String,MonitorReturnDisks>  monitorDiskMaps = new HashMap<String,MonitorReturnDisks>();

        String ip;
        String used;
        String size;
        String use_per;
        String add_time;
        String mounted_on;

        for(int i=0;i<monitorDisks.size();i++){
            ip = monitorDisks.get(i).getIp();
            used = monitorDisks.get(i).getUsed();
            add_time = monitorDisks.get(i).getAdd_time();
            mounted_on = monitorDisks.get(i).getMounted_on();
            use_per = monitorDisks.get(i).getUse_per();
            size = monitorDisks.get(i).getSize();

            if(monitorDiskMaps.containsKey(ip)){
                monitorDiskMaps.get(ip).getDiskUsedList().add(used);
                monitorDiskMaps.get(ip).getDiskMountedOnList().add(mounted_on);
                monitorDiskMaps.get(ip).getDiskSizeList().add(size);
                monitorDiskMaps.get(ip).getDiskUsePerLis().add(use_per);
                monitorDiskMaps.get(ip).getAdd_timeList().add(add_time);
            }else{
                MonitorReturnDisks monitorReturnDisks =
                            new MonitorReturnDisks(new ArrayList(),new ArrayList(),new ArrayList(),new ArrayList(),new ArrayList());
                monitorReturnDisks.getDiskUsePerLis().add(use_per);
                monitorReturnDisks.getDiskSizeList().add(size);
                monitorReturnDisks.getDiskMountedOnList().add(mounted_on);
                monitorReturnDisks.getDiskUsedList().add(used);
                monitorReturnDisks.getAdd_timeList().add(add_time);
                monitorDiskMaps.put(ip,monitorReturnDisks);
            }
        }
        model.addAttribute("monitorDiskMaps",monitorDiskMaps);
        System.out.println(monitorDiskMaps.get("10.62.242.125"));
        System.out.println(model);
        return "showMonitorDisks";
    }




}
