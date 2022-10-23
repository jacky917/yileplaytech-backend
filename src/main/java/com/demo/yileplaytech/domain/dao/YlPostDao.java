package com.demo.yileplaytech.domain.dao;

import com.demo.yileplaytech.domain.entity.YlPost;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * <p>
 * 帖子 Repository 接口
 * </p>
 *
 * @author jacky917
 * @since 2022-10-18
 */
public interface YlPostDao extends JpaRepository<YlPost,Long> {

    //查詢最新的10篇有效貼文
    @Query(value = "select * from yl_post where yn_flag = 1 ORDER BY modified_time DESC limit 10",nativeQuery = true)
    public List<YlPost> getLatestPosts();

}
