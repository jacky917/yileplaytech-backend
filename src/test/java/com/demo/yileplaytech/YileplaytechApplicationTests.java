package com.demo.yileplaytech;

import com.demo.yileplaytech.domain.dao.YlPostDao;
import com.demo.yileplaytech.domain.dao.YlUserDao;
import com.demo.yileplaytech.domain.dao.YlUserRoleDao;
import com.demo.yileplaytech.domain.entity.YlPost;
import com.demo.yileplaytech.domain.vo.sysmgr.PostVo;
import com.demo.yileplaytech.utils.CryptoUtils;
import com.demo.yileplaytech.utils.ShiroUtils;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;
import java.util.List;

@SpringBootTest
class YileplaytechApplicationTests {

    @Autowired
    YlUserRoleDao ylUserRoleDao;

    @Autowired
    YlPostDao ylPostDao;

    @Autowired
    YlUserDao ylUserDao;

    @Test
    void shiroTest(){
        final String salt = "123";
        //加密
        String md5 = ShiroUtils.md5("123456", salt);
        //解密測試
        System.out.println(ShiroUtils.checkMd5Password("jacky917","12345", salt, md5));;
    }

    @Test
    void dbConnectTest(){
        System.out.println(ylUserRoleDao.findAll().size());
        System.out.println("---------------------------");
        System.out.println(ylPostDao.findAll().size());
        System.out.println("---------------------------");
        System.out.println(ylUserDao.findAll().size());
        System.out.println("---------------------------");
    }

    @Test
    void sqlTest(){
        System.out.println(ylUserDao.findUserByUsername("admin"));
    }

    @Test
    void postSelectTest(){
        List<YlPost> latestPosts = ylPostDao.getLatestPosts();
        List<PostVo> list = new ArrayList<>();
        for(YlPost post : latestPosts){
            System.out.println(post);
            list.add(new PostVo(post));
        }
        System.out.println("latestPosts");
        System.out.println(list);
//        List<PostVo> latestPosts = ylPostDao.getLatestPosts();
//        for(PostVo post : latestPosts){
//            System.out.println(post);
//        }
    }

    @Test
    void encryptTest(){
        String secret = CryptoUtils.encryptCBC("測試");
        System.out.println(secret);
        System.out.println(CryptoUtils.decryptCBC(secret));
    }

}
