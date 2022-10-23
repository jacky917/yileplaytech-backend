package com.demo.yileplaytech.service.sysmgr;

import com.demo.yileplaytech.domain.entity.YlUser;
import com.demo.yileplaytech.domain.vo.Result;
import com.demo.yileplaytech.domain.vo.sysmgr.AuthVo;
import com.demo.yileplaytech.domain.vo.sysmgr.UserVo;

import javax.servlet.http.HttpServletResponse;

/**
 * <p>
 * 用戶表 服務類
 * </p>
 *
 * @author jacky917
 * @since 2022-10-18
 */
public interface IYlUserService {
    /**
     * 用戶登入
     * @param user UserVo
     * @return Result
     */
    Result<AuthVo> login(UserVo user, HttpServletResponse response);


//    /**
//     * 生成token
//     * @param account 帳號
//     * @param millTimes 時間
//     * @return 返回令牌
//     */
//    String genToken(String account, long millTimes);

    /**
     * 獲取用戶令牌
     * @param user userBean
     * @return token 令牌
     */
    String getToken(YlUser user);

    /**
     * 解析用戶令牌
     * @param token 令牌
     * @return user 用戶Vo
     */
    UserVo getUser(String token);

}
