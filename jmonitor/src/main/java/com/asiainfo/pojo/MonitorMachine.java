package com.asiainfo.pojo;

import java.util.Date;

/**
 * Created by jiangtao on 2018/1/24.
 * `ip`,`mac`,`cpu`,`memory`,`storage`,`swap`,`add_time`
 */
public class MonitorMachine {
    private String ip;
    private String mac;
    private int cpu;
    private double memory;
    private double storage;
    private double swap;
    private Date add_time;

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getMac() {
        return mac;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public int getCpu() {
        return cpu;
    }

    public void setCpu(int cpu) {
        this.cpu = cpu;
    }

    public double getMemory() {
        return memory;
    }

    public void setMemory(double memory) {
        this.memory = memory;
    }

    public double getStorage() {
        return storage;
    }

    public void setStorage(double storage) {
        this.storage = storage;
    }

    public double getSwap() {
        return swap;
    }

    public void setSwap(double swap) {
        this.swap = swap;
    }

    public Date getAdd_time() {
        return add_time;
    }

    public void setAdd_time(Date add_time) {
        this.add_time = add_time;
    }
}
