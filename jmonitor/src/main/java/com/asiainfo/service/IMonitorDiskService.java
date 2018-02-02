package com.asiainfo.service;

import com.asiainfo.pojo.MonitorData;
import com.asiainfo.pojo.MonitorDisk;

import java.util.List;

/**
 * Created by jiangtao on 2018/1/23.
 */
public interface IMonitorDiskService {
    List<MonitorDisk> getRecent3HDiskInfo();
}
