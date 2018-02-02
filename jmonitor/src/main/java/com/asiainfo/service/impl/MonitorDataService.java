package com.asiainfo.service.impl;

import com.asiainfo.dao.MonitorDataDao;
import com.asiainfo.dao.MonitorHostDao;
import com.asiainfo.pojo.MonitorData;
import com.asiainfo.pojo.Monitorhost;
import com.asiainfo.service.IMonitorDataService;
import com.asiainfo.service.IMonitorHostService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by jiangtao on 2018/1/23.
 */
@Service("monitorDataService")
public class MonitorDataService implements IMonitorDataService {

    @Resource
    private MonitorDataDao monitorDataDao;

    @Override
    public List<MonitorData> getAllRecentData() {
        List<MonitorData> monitorDatas = monitorDataDao.getAllRecentData();
        return monitorDatas;
    }

    @Override
    public List<MonitorData> getCpu() {
        List<MonitorData> monitorCpus =  monitorDataDao.getCpu();
        return monitorCpus;
    }
}
