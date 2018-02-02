package com.asiainfo.pojo;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by jiangtao on 2018/1/29.
 * `ip`,`fileSystem`,`Type`,`Size`,`Used`,`Avail`,
 `Use_per`,`Mounted_on`,`add_time`
 */
public class MonitorDisk {
    private String ip;
    private String fileSystem;
    private String type;
    private String size;
    private String used;
    private String avail;
    private String use_per;
    private String mounted_on;
    private String add_time;
    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    public MonitorDisk() {
    }

    public MonitorDisk(String ip, String fileSystem, String type, String size, String used, String avail, String use_per, String mounted_on, String add_time) {
        this.ip = ip;
        this.fileSystem = fileSystem;
        this.type = type;
        this.size = size;
        this.used = used;
        this.avail = avail;
        this.use_per = use_per;
        this.mounted_on = mounted_on;
        this.add_time = add_time;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getFileSystem() {
        return fileSystem;
    }

    public void setFileSystem(String fileSystem) {
        this.fileSystem = fileSystem;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getUsed() {
        return used;
    }

    public void setUsed(String used) {
        this.used = used;
    }

    public String getAvail() {
        return avail;
    }

    public void setAvail(String avail) {
        this.avail = avail;
    }

    public String getUse_per() {
        return use_per.substring(0,use_per.indexOf('%'));
    }

    public void setUse_per(String use_per) {
        this.use_per = use_per;
    }

    public String getMounted_on() {
        return mounted_on;
    }

    public void setMounted_on(String mounted_on) {
        this.mounted_on = mounted_on;
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
