package com.asiainfo.pojo;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import javax.management.monitor.Monitor;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by ycz on 2018/1/25.
 */
public class MonitorCpu {
    private List cpu_totalList = new ArrayList();
    private List cpu_userList = new ArrayList();
    private List cpu_sysList = new ArrayList();
    private List add_timeList = new ArrayList();
    private String ip;

    public MonitorCpu(List cpu_totalList, List cpu_userList, List cpu_sysList, List add_timeList, String ip) {
        this.cpu_totalList = cpu_totalList;
        this.cpu_userList = cpu_userList;
        this.cpu_sysList = cpu_sysList;
        this.add_timeList = add_timeList;
        this.ip = ip;
    }

    public List getCpu_userList() {
        return cpu_userList;
    }

    public void setCpu_userList(List cpu_userList) {
        this.cpu_userList = cpu_userList;
    }

    public List getCpu_sysList() {
        return cpu_sysList;
    }

    public void setCpu_sysList(List cpu_sysList) {
        this.cpu_sysList = cpu_sysList;
    }

    public MonitorCpu(){};
    public MonitorCpu(List cpu_totalList, List add_timeList, String ip) {
        this.cpu_totalList = cpu_totalList;
        this.add_timeList = add_timeList;
        this.ip = ip;
    }

    @Override
    public String toString() {
        return "MonitorCpu{" +
                "cpu_totalList=" + cpu_totalList +
                ", add_timeList=" + add_timeList +
                ", ip='" + ip + '\'' +
                '}';
    }

    public List getCpu_totalList() {
        return cpu_totalList;
    }

    public void setCpu_totalList(List cpu_totalList) {
        this.cpu_totalList = cpu_totalList;
    }

    public List getAdd_timeList() {
        return add_timeList;
    }

    public void setAdd_timeList(List add_timeList) {
        this.add_timeList = add_timeList;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }
    public Object transfromToJson(Object object){
        return JSONObject.toJSON(object);
    }
    public static void main(String[] args){
        List cpu_totalList = new ArrayList();
        List add_timeList = new ArrayList();
        cpu_totalList.add(1);
        add_timeList.add("2017-10-24 12:12:00");
        cpu_totalList.add(2);
        add_timeList.add("2017-10-24 12:12:00");
        cpu_totalList.add(3);
        add_timeList.add("2017-10-24 12:12:00");
        String ip = "10.62.242.126";
        MonitorCpu monitorCpu = new MonitorCpu(cpu_totalList,add_timeList,ip);
        System.out.println(monitorCpu.toString());
        System.out.println();
    }

}
