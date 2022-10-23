package com.demo.yileplaytech.service.sysmgr;

import com.demo.yileplaytech.domain.vo.sysmgr.PostVo;
import com.demo.yileplaytech.domain.vo.sysmgr.UserVo;

import java.util.List;

/**
 * <p>
 * 帖子表 服務類
 * </p>
 *
 * @author jacky917
 * @since 2022-10-18
 */
public interface IYlPostService {

    /**
     * 獲取最新的10篇貼文
     * @return PostVo
     */
    List<PostVo> getPost(UserVo user);

    /**
     * 新增1篇貼文，並返回最新10篇貼文
     * @return PostVo
     */
    List<PostVo> insertPost(UserVo user,PostVo post);
}
