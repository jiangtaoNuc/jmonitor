package com.asiainfo.service.impl;

import com.asiainfo.dao.MonitorDataDao;
import com.asiainfo.dao.MonitorDiskDao;
import com.asiainfo.pojo.MonitorData;
import com.asiainfo.pojo.MonitorDisk;
import com.asiainfo.service.IMonitorDataService;
import com.asiainfo.service.IMonitorDiskService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by jiangtao on 2018/1/23.
 */
@Service("monitorDiskService")
public class MonitorDiskService implements IMonitorDiskService {

    @Resource
    private MonitorDiskDao monitorDiskDao;

    @Override
    public List<MonitorDisk> getRecent3HDiskInfo() {
        List<MonitorDisk> monitorDisks = new ArrayList<MonitorDisk>();
        monitorDisks = this.monitorDiskDao.getRecent3HDiskInfo();
        return monitorDisks;
    }
}
