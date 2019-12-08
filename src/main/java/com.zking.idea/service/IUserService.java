package com.zking.idea.service;


import com.zking.idea.model.TSysUser;

import java.util.Set;

public interface IUserService {

    /**
     * 通过用户名称获取用户信息
     * @param userName 用户名称
     * @return TSysUser 系统用户实体对象
     */
    public TSysUser load(String userName);


    /**
     * 通过用户名称获取角色信息
     * @param userName 用户名称
     * @return 角色名称的集合
     */
   Set<String> getRolesByUserName(String userName);

    /**
     * 通过用户的名称获取角色信息
     * @param userName 用户名称
     * @return 权限集合
     */
   Set<String> getPermissionsByUserName(String userName);

}
