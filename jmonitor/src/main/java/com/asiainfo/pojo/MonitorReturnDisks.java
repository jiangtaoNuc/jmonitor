package com.asiainfo.pojo;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by jiangtao on 2018/2/2.
 */
public class MonitorReturnDisks {
    private List diskUsedList = new ArrayList();
    private List diskUsePerLis = new ArrayList();
    private List diskSizeList = new ArrayList();
    private List diskMountedOnList = new ArrayList();
    private List add_timeList = new ArrayList();

    @Override
    public String toString() {
        return "MonitorReturnDisks{" +
                "diskUsedList=" + diskUsedList +
                ", diskUsePerLis=" + diskUsePerLis +
                ", diskSizeList=" + diskSizeList +
                ", diskMountedOnList=" + diskMountedOnList +
                ", add_timeList=" + add_timeList +
                '}';
    }

    public List getAdd_timeList() {
        return add_timeList;
    }

    public void setAdd_timeList(List add_timeList) {
        this.add_timeList = add_timeList;
    }

    public MonitorReturnDisks(List diskUsedList, List diskUsePerLis, List diskSizeList, List diskMountedOnList, List add_timeList) {
        this.diskUsedList = diskUsedList;
        this.diskUsePerLis = diskUsePerLis;
        this.diskSizeList = diskSizeList;
        this.diskMountedOnList = diskMountedOnList;
        this.add_timeList = add_timeList;
    }

    public MonitorReturnDisks(List diskUsedList, List diskUsePerLis, List diskSizeList, List diskMountedOnList) {
        this.diskUsedList = diskUsedList;
        this.diskUsePerLis = diskUsePerLis;
        this.diskSizeList = diskSizeList;
        this.diskMountedOnList = diskMountedOnList;
    }

    public List getDiskUsedList() {
        return diskUsedList;
    }

    public void setDiskUsedList(List diskUsedList) {
        this.diskUsedList = diskUsedList;
    }

    public List getDiskUsePerLis() {
        return diskUsePerLis;
    }

    public void setDiskUsePerLis(List diskUsePerLis) {
        this.diskUsePerLis = diskUsePerLis;
    }

    public List getDiskSizeList() {
        return diskSizeList;
    }

    public void setDiskSizeList(List diskSizeList) {
        this.diskSizeList = diskSizeList;
    }

    public List getDiskMountedOnList() {
        return diskMountedOnList;
    }

    public void setDiskMountedOnList(List diskMountedOnList) {
        this.diskMountedOnList = diskMountedOnList;
    }
}
