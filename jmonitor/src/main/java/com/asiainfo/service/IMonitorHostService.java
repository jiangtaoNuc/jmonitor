package com.asiainfo.service;

import com.asiainfo.pojo.Monitorhost;

import java.util.List;

/**
 * Created by jiangtao on 2018/1/23.
 */
public interface IMonitorHostService {
    void insertMonitorHost(Monitorhost monitorHost);
    void updateMonitorHost(Monitorhost monitorHost);
    Monitorhost selectMonitorHostByKey(String ip);
    void delMonitorHostByKey(String ip);
    List<Monitorhost> getAll();
}
