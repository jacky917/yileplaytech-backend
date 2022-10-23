package com.demo.yileplaytech.controller;


import com.demo.yileplaytech.domain.vo.Result;
import com.demo.yileplaytech.domain.vo.sysmgr.AuthVo;
import com.demo.yileplaytech.domain.vo.sysmgr.UserVo;
import com.demo.yileplaytech.service.sysmgr.IYlUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;

/**
 * <p>
 *  公開 控制器
 * </p>
 *
 * @author jacky917
 * @since 2022-10-18
 */
@RestController
@RequestMapping("/api/pub")
public class PubController {


    @Value("${project.domain}")
    String domain;

    @Autowired
    IYlUserService iYlUserService;

    /**
     * 登入
     * @param user UserVo
     * @return Result
     */
    @ResponseBody
    @RequestMapping(value="/login",method = {RequestMethod.POST})
    public Result<AuthVo> login(HttpServletResponse response, @RequestBody UserVo user) {
        response.setHeader("Access-Control-Allow-Origin", domain);
        response.setHeader("Access-Control-Allow-Credentials", "true");
        return iYlUserService.login(user,response);
    }



//    /**
//     *
//     * @param data
//     * @return Result
//     */
//    @PostMapping(value="/login")
//    public Result Login(@RequestBody JSONObject data)  {
//
//        YlUser user = new YlUser();
//        user.setId(0L);
//        user.setName(data.getJSONObject("data").getString("username"));
//        user.setPassword(data.getJSONObject("data").getString("password"));
//
////        System.out.println("-----------------------");
////        System.out.println(ylUserRoleRepository.findAll());
//
//        return new Result<String>(true, "success", user.getName(), Constants.TOKEN_CHECK_SUCCESS);
//    }


}
