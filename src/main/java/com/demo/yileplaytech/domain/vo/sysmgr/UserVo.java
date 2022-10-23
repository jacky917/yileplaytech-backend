package com.demo.yileplaytech.domain.vo.sysmgr;

import lombok.Data;
import java.io.Serializable;

@Data
public class UserVo implements Serializable {

    private static final long serialVersionUID = 2L;

    /**
     * 自增主鍵
     */
    private Long id;

    /**
     * 用戶名
     */
    private String username;

    /**
     * 用戶密碼
     */
    private String password;

    public UserVo(){

    }

    public UserVo(Long id,String username, String password){

        this.id = id;
        this.username = username;
        this.password = password;
    }

}
