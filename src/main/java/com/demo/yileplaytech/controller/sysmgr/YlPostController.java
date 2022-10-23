package com.demo.yileplaytech.controller.sysmgr;

import com.demo.yileplaytech.constant.Constants;
import com.demo.yileplaytech.domain.vo.Result;
import com.demo.yileplaytech.domain.vo.sysmgr.PostVo;
import com.demo.yileplaytech.domain.vo.sysmgr.UserVo;
import com.demo.yileplaytech.service.sysmgr.IYlPostService;
import com.demo.yileplaytech.service.sysmgr.IYlUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  帖子表 控制器
 * </p>
 *
 * @author jacky917
 * @since 2022-10-18
 */
@RestController
@RequestMapping("/api/sysmgr")
public class YlPostController {

    @Autowired
    IYlPostService iYlPostService;
    
    @Autowired
    IYlUserService userService;

    /**
     * 獲取最新10個貼文
     * @param token 令牌
     * @return Result
     */
    @ResponseBody
    @RequestMapping(value="/posts",method = {RequestMethod.GET})
    public Result<List<PostVo>> getPosts(@RequestHeader("Authorization") String token) {
        UserVo user = userService.getUser(token);
        if(user == null) return new Result<>(false,"驗證失敗", new ArrayList<>(), Constants.PARAMETERS_MISSING);
        return new Result<>(true,"驗證成功", iYlPostService.getPost(user), Constants.TOKEN_CHECK_SUCCESS);
    }

    /**
     * 新增1篇貼文，並返回最新10篇貼文
     * @param token 令牌
     * @return Result
     */
    @ResponseBody
    @RequestMapping(value="/posts",method = {RequestMethod.POST})
    public Result<List<PostVo>> getPosts(@RequestHeader("Authorization") String token,@RequestBody PostVo post) {
        UserVo user = userService.getUser(token);
        if(user == null) return new Result<>(false,"驗證失敗", new ArrayList<>(), Constants.PARAMETERS_MISSING);
        return new Result<>(true,"驗證成功", iYlPostService.insertPost(user,post), Constants.TOKEN_CHECK_SUCCESS);
    }

}
