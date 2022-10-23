package com.demo.yileplaytech.domain.vo.sysmgr;

import com.demo.yileplaytech.domain.entity.YlPost;
import com.demo.yileplaytech.utils.CryptoUtils;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

@Data
public class PostVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 自增主鍵
     */
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
     * 發佈人ID
     */
    private Long postUserId;

//    /**
//     * 發佈人姓名
//     */
//    private Integer postUserName;

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
     * 修改時間
     */
    private LocalDateTime modifiedTime;

    public PostVo(){

    }

    public PostVo(YlPost post){
        this.id = post.getId();
        this.title = CryptoUtils.encryptCBC(post.getTitle());
        this.content = CryptoUtils.encryptCBC(post.getContent());
        this.postUserId = post.getPostUserId();
        this.postCategoryId = post.getPostCategoryId();
        this.postTagId = post.getPostTagId();
        this.nicePost = post.getNicePost();
        this.browseCount = post.getBrowseCount();
        this.thumbsUp = post.getThumbsUp();
        this.modifiedTime = post.getModifiedTime();
    }
}