package com.asiainfo.dao;

import com.asiainfo.pojo.Monitorhost;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

/**
 * Created by jiangtao on 2018/1/23.
 */
@MapperScan
public interface MonitorHostDao {
    void insertMonitorHost(Monitorhost monitorHost);
    void updateMonitorHost(Monitorhost monitorHost);
    Monitorhost selectMonitorHostByKey(String ip);
    void delMonitorHostByKey(String ip);
    List<Monitorhost> getAll();
}
