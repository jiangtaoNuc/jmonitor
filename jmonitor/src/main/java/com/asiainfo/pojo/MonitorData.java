package com.asiainfo.pojo;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by jiangtao on 2018/1/24.
 * `ip`,`cpu_user`,`cpu_sys`,`cpu_free`,`memory_total`,
 `memory_use`,`memory_free`,`memory_buffer`,`swap_total`,`swap_use`,`swap_free`,`swap_cache`
 ,`io_write`,`io_read`,`load_01`,`load_05`,`load_15`,`add_time`
 */
public class MonitorData {
    private String ip;
    private double cpu_user;
    private double cpu_sys;
    private double cpu_free;
    private double memory_total;
    private double memory_use;
    private double memory_free;
    private double memory_buffer;
    private double swap_total;
    private double swap_use;
    private double swap_free;
    private double swap_cache;
    private String io_write;
    private String io_read;
    private double load_01;
    private double load_05;
    private double load_15;
    private String add_time;

    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public double getCpu_user() {
        return cpu_user;
    }

    public void setCpu_user(double cpu_user) {
        this.cpu_user = cpu_user;
    }

    public double getCpu_sys() {
        return cpu_sys;
    }

    public void setCpu_sys(double cpu_sys) {
        this.cpu_sys = cpu_sys;
    }

    public double getCpu_free() {
        return cpu_free;
    }

    public void setCpu_free(double cpu_free) {
        this.cpu_free = cpu_free;
    }

    public double getMemory_total() {
        return memory_total;
    }

    public void setMemory_total(double memory_total) {
        this.memory_total = memory_total;
    }

    public double getMemory_use() {
        return memory_use;
    }

    public void setMemory_use(double memory_use) {
        this.memory_use = memory_use;
    }

    public double getMemory_free() {
        return memory_free;
    }

    public void setMemory_free(double memory_free) {
        this.memory_free = memory_free;
    }

    public double getMemory_buffer() {
        return memory_buffer;
    }

    public void setMemory_buffer(double memory_buffer) {
        this.memory_buffer = memory_buffer;
    }

    public double getSwap_total() {
        return swap_total;
    }

    public void setSwap_total(double swap_total) {
        this.swap_total = swap_total;
    }

    public double getSwap_use() {
        return swap_use;
    }

    public void setSwap_use(double swap_use) {
        this.swap_use = swap_use;
    }

    public double getSwap_free() {
        return swap_free;
    }

    public void setSwap_free(double swap_free) {
        this.swap_free = swap_free;
    }

    public double getSwap_cache() {
        return swap_cache;
    }

    public void setSwap_cache(double swap_cache) {
        this.swap_cache = swap_cache;
    }

    public String getIo_write() {
        return io_write;
    }

    public void setIo_write(String io_write) {
        this.io_write = io_write;
    }

    public String getIo_read() {
        return io_read;
    }

    public void setIo_read(String io_read) {
        this.io_read = io_read;
    }

    public double getLoad_01() {
        return load_01;
    }

    public void setLoad_01(double load_01) {
        this.load_01 = load_01;
    }

    public double getLoad_05() {
        return load_05;
    }

    public void setLoad_05(double load_05) {
        this.load_05 = load_05;
    }

    public double getLoad_15() {
        return load_15;
    }

    public void setLoad_15(double load_15) {
        this.load_15 = load_15;
    }

    public String getAdd_time() {
        Date time = new Date();
        try{
          time = sdf.parse(add_time);
        }catch(Exception e){

        }
        return sdf.format(time);
    }

    public void setAdd_time(String add_time) {
        this.add_time = add_time;
    }
}
