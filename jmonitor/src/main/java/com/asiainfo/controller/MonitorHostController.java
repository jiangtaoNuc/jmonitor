package com.asiainfo.controller;

import com.asiainfo.pojo.Monitorhost;
import com.asiainfo.service.IMonitorHostService;
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
@RequestMapping("/monitorHost")
public class MonitorHostController {

    @Resource
    private IMonitorHostService monitorHostService;

    @RequestMapping("/getAll")
    public String getAll(HttpServletRequest request, Model model){
        List<Monitorhost> monitorHosts = this.monitorHostService.getAll();
        System.out.println(monitorHosts.size());
        model.addAttribute("monitorHosts",monitorHosts);
        //model.addAllAttributes(monitorHosts);
        System.out.println(model);
        return "showMonitorHosts";
    }


}
