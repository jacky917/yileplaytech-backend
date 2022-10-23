package com.demo.yileplaytech.domain.dao;

import com.demo.yileplaytech.domain.entity.YlUserRole;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * <p>
 * 用户角色关系表 Repository 接口
 * </p>
 *
 * @author jacky917
 * @since 2022-10-18
 */
public interface YlUserRoleDao extends JpaRepository<YlUserRole,Long> {

}
