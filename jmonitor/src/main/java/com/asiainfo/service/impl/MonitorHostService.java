package com.asiainfo.service.impl;

import com.asiainfo.dao.MonitorHostDao;
import com.asiainfo.pojo.Monitorhost;
import com.asiainfo.service.IMonitorHostService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by jiangtao on 2018/1/23.
 */
@Service("monitorHostService")
public class MonitorHostService implements IMonitorHostService {

    @Resource
    private MonitorHostDao monitorHostDao;

    @Override
    public List<Monitorhost> getAll() {
        List<Monitorhost> monitorHosts = new ArrayList<Monitorhost>();
        monitorHosts = monitorHostDao.getAll();
        return monitorHosts;
    }

    @Override
    public void insertMonitorHost(Monitorhost monitorHost) {
        monitorHostDao.insertMonitorHost(monitorHost);
    }

    @Override
    public void updateMonitorHost(Monitorhost monitorHost) {
        monitorHostDao.updateMonitorHost(monitorHost);
    }

    @Override
    public Monitorhost selectMonitorHostByKey(String ip) {
        Monitorhost monitorHost = monitorHostDao.selectMonitorHostByKey(ip);
        return monitorHost;
    }

    @Override
    public void delMonitorHostByKey(String ip) {
        monitorHostDao.delMonitorHostByKey(ip);
    }
}
