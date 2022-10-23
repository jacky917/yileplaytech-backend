package com.demo.yileplaytech.domain.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 
 * </p>
 *
 * @author jacky917
 * @since 2022-10-18
 */
@Getter
@Setter
@Entity
@Table(name = "yl_post")
public class YlPost implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 自增主鍵
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 帖子標題
     */
    private String title;

    /**
     * 帖子內容
     */
    private String content;

    /**
     * 帖子狀態
     */
    private String status;

    /**
     * 發佈人ID
     */
    private Long postUserId;

    /**
     * 帖子分類
     */
    private Integer postCategoryId;

    /**
     * 帖子標籤
     */
    private Integer postTagId;

    /**
     * 精選帖子
     */
    private Integer nicePost;

    /**
     * 瀏覽數
     */
    private Integer browseCount;

    /**
     * 點讚數
     */
    private Integer thumbsUp;

    /**
     * 有效標示
     */
    private String ynFlag;

    /**
     * 創建時間
     */
    private LocalDateTime createdTime;

    /**
     * 修改時間
     */
    private LocalDateTime modifiedTime;

}
