package com.asiainfo.controller;

import com.asiainfo.pojo.MonitorData;
import com.asiainfo.pojo.MonitorMachine;
import com.asiainfo.service.IMonitorDataService;
import com.asiainfo.service.IMonitorMachineService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by jiangtao on 2018/1/23.
 */

@Controller
@RequestMapping("/monitorMachine")
public class MonitorMachineController {

    @Resource
    private IMonitorMachineService monitorMachineService;

    @RequestMapping("/getAllRecentData")
    public String getAll(HttpServletRequest request, Model model){
        List<MonitorMachine> monitorMachines = this.monitorMachineService.getAllRecentData();
        System.out.println(monitorMachines.size());
        model.addAttribute("monitorMachines",monitorMachines);
        //model.addAllAttributes(monitorHosts);
        System.out.println(model);
        return "showMonitorMachines";
    }
}
