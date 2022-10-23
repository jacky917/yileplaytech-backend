package com.demo.yileplaytech.domain.entity;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 用户角色关系表
 * </p>
 *
 * @author jacky917
 * @since 2022-10-18
 */
@Getter
@Setter
@Entity
@Table(name = "yl_user_role")
public class YlUserRole implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 自增主鍵
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    /**
     * 用戶ID
     */
    @Column(name = "user_id")
    private Long userId;

    /**
     * 角色ID
     */
    @Column(name = "role_id")
    private Long roleId;

    /**
     * 創建人
     */
    @Column(name = "creator")
    private String creator;

    /**
     * 修改人
     */
    @Column(name = "editor")
    private String editor;

    /**
     * 有效標示
     */
    @Column(name = "yn_flag")
    private String ynFlag;

    /**
     * 創建時間
     */
    @Column(name = "created_time")
    @CreatedDate()
    private LocalDateTime createdTime;

    /**
     * 修改時間
     */
    @Column(name = "modified_time")
    @LastModifiedDate
    private LocalDateTime modifiedTime;
}
