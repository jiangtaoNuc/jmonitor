package com.asiainfo.dao;

import com.asiainfo.pojo.User;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;

/**
 * Created by jiangtao on 2018/1/22.
 */

@MapperScan
public interface UserDao {

    public User selectByPrimaryKey(int userId);
}
