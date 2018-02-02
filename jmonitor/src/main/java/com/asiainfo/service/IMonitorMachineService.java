package com.asiainfo.service;

import com.asiainfo.pojo.MonitorData;
import com.asiainfo.pojo.MonitorMachine;

import java.util.List;

/**
 * Created by jiangtao on 2018/1/23.
 */
public interface IMonitorMachineService {
    List<MonitorMachine> getAllRecentData();
}
