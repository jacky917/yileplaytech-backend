package com.demo.yileplaytech.service.sysmgr.impl;

import com.demo.yileplaytech.constant.Constants;
import com.demo.yileplaytech.constant.SecurityConsts;
import com.demo.yileplaytech.constant.enumtype.YNFlagStatusEnum;
import com.demo.yileplaytech.constant.sysmgr.UserStatusEnum;
import com.demo.yileplaytech.domain.dao.YlUserDao;
import com.demo.yileplaytech.domain.entity.YlUser;
import com.demo.yileplaytech.domain.vo.Result;
import com.demo.yileplaytech.domain.vo.sysmgr.AuthVo;
import com.demo.yileplaytech.domain.vo.sysmgr.UserVo;
import com.demo.yileplaytech.service.sysmgr.IYlUserService;
import com.demo.yileplaytech.utils.CryptoUtils;
import com.demo.yileplaytech.utils.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import javax.servlet.http.HttpServletResponse;

/**
 * <p>
 * 用戶表 服務實現類
 * </p>
 *
 * @author jacky917
 * @since 2022-10-18
 */
@Service
public class YlUserServiceImpl implements IYlUserService {

    @Autowired
    YlUserDao ylUserDao;

    /**
     * 登入驗證
     * @param user UserVo
     * @param response 寫死token暫時不用
     * @return Result
     */
    @Override
    public Result<AuthVo> login(UserVo user, HttpServletResponse response) {

        String username = CryptoUtils.decryptCBC(user.getUsername());
        String password = CryptoUtils.decryptCBC(user.getPassword());

        System.out.println("Username = " + username + ", Password = " + password);

        Assert.notNull(username, "用戶名不能為空");
        Assert.notNull(password, "密碼不能為空");

        YlUser userBean = ylUserDao.findUserByUsername(username);

        //帳號是否存在
        if (userBean == null) {
            return new Result<AuthVo>(false, "用戶不存在", null, Constants.PASSWORD_CHECK_INVALID);
        }

        //帳號有效性檢查
        if (YNFlagStatusEnum.FAIL.getCode().equals(userBean.getYnFlag())) {
            return new Result<AuthVo>(false, "帳號不存在", null, Constants.PASSWORD_CHECK_INVALID);
        }

        String encodePassword = ShiroUtils.md5(password, SecurityConsts.LOGIN_SALT);
        if (!encodePassword.equals(userBean.getPassword())) {
            return new Result<AuthVo>(false, "用戶名或密碼錯誤", null, Constants.PASSWORD_CHECK_INVALID);
        }

        //帳號是否鎖定
        if (UserStatusEnum.LOCK.code().equals(userBean.getStatus())) {
            return new Result<AuthVo>(false, "該帳號已被鎖定", null, Constants.PASSWORD_CHECK_INVALID);
        }

        //生成令牌
        AuthVo token = new AuthVo();
        token.setId(userBean.getId());
        token.setToken(getToken(userBean));

        //登入成功
        return new Result<AuthVo>(true, "登入成功", token, Constants.TOKEN_CHECK_SUCCESS);


//        String strToken;
//        try (UserContext context = new UserContext(new LoginUser(userBean.getAccount()))) {
//            strToken = this.loginSuccess(userBean.getAccount(),  response);
//
//            Subject subject = SecurityUtils.getSubject();
//            AuthenticationToken token = new JwtToken(strToken);
//            subject.login(token);
//        }

    }

    @Override
    public String getToken(YlUser user) {
        //TODO 使用生成的令牌
        if("admin".equals(user.getAccount())){
            return "HkuH6rx05vhvwg0xa9Mym3qidi5sF0EKcYvFOpiNJDaN6btHiR5AEK9vBF9FLQs9";
        }else if("test1".equals(user.getAccount())){
            return "Afhk3b9ADgljeHAqiinC3GCWD7KihnSlrlCeHQUvPPPL1P6R425cGsT7kUOsf5jY";
        }else return null;
    }

    @Override
    public UserVo getUser(String token) {
        if(token.isEmpty()) return null;
        //TODO 從redis獲取用戶信息
        if("HkuH6rx05vhvwg0xa9Mym3qidi5sF0EKcYvFOpiNJDaN6btHiR5AEK9vBF9FLQs9".equals(token)){
            return new UserVo(1L,"admin",null);
        }else if("Afhk3b9ADgljeHAqiinC3GCWD7KihnSlrlCeHQUvPPPL1P6R425cGsT7kUOsf5jY".equals(token)){
            return new UserVo(2L,"test1",null);
        }else return null;
    }

//    /**
//     * 登入後更新緩存，生成token，設置響應頭部信息
//     * @param account　帳號
//     * @param response　response
//     */
//    private String loginSuccess(String account,HttpServletResponse response) {
//        long millTimes= System.currentTimeMillis();

//        生成token
//        String token = this.genToken(account, millTimes);

//        //紀錄日誌
//        LoginLog loginLog= new LoginLog();
//        loginLog.setAccount(account);
//        loginLog.setLoginTime(Date.from(Instant.now()));
//        loginLog.setContent("登入成功");
//        loginLog.setYnFlag(YNFlagStatusEnum.VALID.getCode());
//        loginLog.setCreator(account);
//        loginLog.setEditor(account);
//        loginLog.setCreatedTime(loginLog.getLoginTime());
//        loginLogService.save(loginLog);

//        //寫入header
//        response.setHeader(SecurityConsts.REQUEST_AUTH_HEADER, token);
//        response.setHeader("Access-Control-Expose-Headers", SecurityConsts.REQUEST_AUTH_HEADER);
//
//        return token;
//    }


//    public String genToken(String account, long millTimes) {
////        log.info(String.format("為帳戶%s頒發新的令牌", account));
//
//        String currentTimeMillis = String.valueOf(millTimes);
//        String token = JwtUtil.sign(account, String.valueOf(millTimes));
//
//        //更新RefreshToken緩存的時間戳
//        String refreshTokenKey= SecurityConsts.PREFIX_SHIRO_REFRESH_TOKEN + account;
//        jedisUtils.saveString(refreshTokenKey, currentTimeMillis, jwtProperties.getTokenExpireTime()*60);
//        return token;
//    }

}
