package com.zking.idea.mapper;


import com.zking.idea.model.TSysUser;
import org.apache.ibatis.annotations.Param;

import java.util.Set;


public interface UserMapper {

    /**
     * 通过用户名获取用户信息
     * @param userName  用户名称
     * @return  TSysUser 系统用户实体对象
     */
    TSysUser load(@Param("userName") String userName);

    /**
     * 通过用户名称获取角色信息
     * @param userName 用户名称
     * @return  角色名称的集合
     */
     Set<String> getRolesByUserName(@Param("userName") String userName);

     Set<String> getpermissionsByUserName(@Param("userName") String userName);



}
