package com.demo.yileplaytech.domain.dao;

import com.demo.yileplaytech.domain.entity.YlUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 * <p>
 * 用户表 Repository 接口
 * </p>
 *
 * @author jacky917
 * @since 2022-10-18
 */
public interface YlUserDao extends JpaRepository<YlUser,Long> {

    //使用帳號查詢用戶資料
    @Query(value = "select * from yl_user where account = ? limit 1",nativeQuery = true)
    public YlUser findUserByUsername(String name);

}
