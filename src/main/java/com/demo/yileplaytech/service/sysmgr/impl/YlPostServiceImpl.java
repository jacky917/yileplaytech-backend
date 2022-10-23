package com.demo.yileplaytech.service.sysmgr.impl;

import com.demo.yileplaytech.domain.dao.YlPostDao;
import com.demo.yileplaytech.domain.entity.YlPost;
import com.demo.yileplaytech.domain.vo.sysmgr.PostVo;
import com.demo.yileplaytech.domain.vo.sysmgr.UserVo;
import com.demo.yileplaytech.service.sysmgr.IYlPostService;
import com.demo.yileplaytech.utils.CryptoUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  服務實現類
 * </p>
 *
 * @author jacky917
 * @since 2022-10-18
 */
@Service
public class YlPostServiceImpl implements IYlPostService {

    @Autowired
    YlPostDao ylPostDao;

    @Override
    public List<PostVo> getPost(UserVo user) {
        //TODO 根據用戶過濾有權限的內容
        List<YlPost> latestPosts = ylPostDao.getLatestPosts();
        List<PostVo> list = new ArrayList<>();
        for(YlPost post : latestPosts){
            list.add(new PostVo(post));
        }
        return list;
    }

    @Override
    public List<PostVo> insertPost(UserVo user,PostVo post) {
        YlPost ylPost = new YlPost();
        System.out.println("================================================");
        System.out.println(post.getTitle());
        System.out.println(post.getContent());
        System.out.println("================================================");
        System.out.println("================================================");
        System.out.println(CryptoUtils.decryptCBC(post.getTitle()));
        System.out.println(CryptoUtils.decryptCBC(post.getContent()));
        System.out.println("================================================");
        ylPost.setTitle(CryptoUtils.decryptCBC(post.getTitle()));
        ylPost.setContent(CryptoUtils.decryptCBC(post.getContent()));
        ylPost.setPostUserId(user.getId());
        ylPost.setYnFlag("1");
        ylPostDao.save(ylPost);
        return this.getPost(user);
    }
}
