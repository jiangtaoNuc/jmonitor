package com.asiainfo.service.impl;

import com.asiainfo.dao.MonitorDataDao;
import com.asiainfo.dao.MonitorMachineDao;
import com.asiainfo.pojo.MonitorData;
import com.asiainfo.pojo.MonitorMachine;
import com.asiainfo.service.IMonitorDataService;
import com.asiainfo.service.IMonitorMachineService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by jiangtao on 2018/1/23.
 */
@Service("monitorMachineService")
public class MonitorMachineService implements IMonitorMachineService {

    @Resource
    private MonitorMachineDao monitorMachineDao;

    @Override
    public List<MonitorMachine> getAllRecentData() {
        List<MonitorMachine> monitorMachines = monitorMachineDao.getAllRecentData();
        return monitorMachines;
    }
}
