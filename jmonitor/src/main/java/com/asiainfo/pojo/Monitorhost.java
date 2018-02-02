package com.asiainfo.pojo;

import java.util.Date;

/**
 * Created by jiangtao on 2018/1/23.
 * `id`,`ip`,`add_time`,`modify_time`,`tags`,`description`
 *
 */
public class Monitorhost {
    private String ip;
    private Date add_time;
    private Date modify_time;

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    private int tags_id;
    private int status;

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public Date getAdd_time() {
        return add_time;
    }

    public void setAdd_time(Date add_time) {
        this.add_time = add_time;
    }

    public Date getModify_time() {
        return modify_time;
    }

    public void setModify_time(Date modify_time) {
        this.modify_time = modify_time;
    }

    public int getTags_id() {
        return tags_id;
    }

    public void setTags_id(int tags_id) {
        this.tags_id = tags_id;
    }

}
