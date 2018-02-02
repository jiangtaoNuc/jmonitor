package com.asiainfo.dao;

import com.asiainfo.pojo.MonitorData;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

/**
 * Created by jiangtao on 2018/1/23.
 */
@MapperScan
public interface MonitorDataDao {
   List<MonitorData> getAllRecentData();
   List<MonitorData> getCpu();
  // List<MonitorData> getAllRecent30Data();
}
