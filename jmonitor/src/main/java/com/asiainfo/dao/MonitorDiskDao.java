package com.asiainfo.dao;

import com.asiainfo.pojo.MonitorData;
import com.asiainfo.pojo.MonitorDisk;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

/**
 * Created by jiangtao on 2018/1/23.
 */
@MapperScan
public interface MonitorDiskDao {
   List<MonitorDisk> getRecent3HDiskInfo();
  // List<MonitorData> getAllRecent30Data();
}
