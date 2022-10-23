package com.demo.yileplaytech.domain.vo.sysmgr;


import lombok.Data;

import java.io.Serializable;

@Data
public class AuthVo implements Serializable {

    private static final long serialVersionUID = 3L;

    /**
     * 用戶ID
     */
    private Long id;

    /**
     * 令牌
     */
    private String token;

    public AuthVo(){

    }

//    public AuthVo(String token){
//        this.token = token;
//        this.id = iYlUserService.getUser(token).getId();
//    }
//
//    public AuthVo(UserVo user){
//        this.id = user.getId();
//        System.out.println(user.getUsername());
//        System.out.println(user.getPassword());
//        this.token = iYlUserService.getToken(user);
//    }
}
