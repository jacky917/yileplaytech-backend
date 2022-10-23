package com.demo.yileplaytech.domain.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 用户表
 * </p>
 *
 * @author jacky917
 * @since 2022-10-18
 */
@Getter
@Setter
@Entity
@Table(name = "yl_user")
public class YlUser implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 自增主鍵
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 帳號
     */
    private String account;

    /**
     * 姓名
     */
    private String name;

    /**
     * 密碼
     */
    private String password;

    /**
     * 信箱
     */
    private String email;

    /**
     * 上次修改密碼時間
     */
    private LocalDateTime lastPwdModifiedTime;

    /**
     * 狀態
     */
    private String status;

    /**
     * 創建人
     */
    private String creator;

    /**
     * 修改人
     */
    private String editor;

    /**
     * 有效標示
     */
    private String ynFlag;

    /**
     * 創建時間
     */
    private LocalDateTime createdTime;

    /**
     * 修改時間
     */
    private LocalDateTime modifiedTime;
}
