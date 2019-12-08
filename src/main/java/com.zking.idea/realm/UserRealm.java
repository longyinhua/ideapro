package com.zking.idea.realm;


import com.zking.idea.model.TSysUser;
import com.zking.idea.service.IUserService;
import org.apache.commons.lang.ObjectUtils;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;

import javax.annotation.Resource;

public class UserRealm  extends AuthorizingRealm {

    @Resource
    private IUserService userService;

    /**
     * 授权
     */
    @Override
    public AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals){
       //获取用户名
        String userName = principals.getPrimaryPrincipal().toString();

        //生成授权信息对象
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        authorizationInfo.addRoles(userService.getRolesByUserName(userName));
        authorizationInfo.setStringPermissions(userService.getPermissionsByUserName(userName));




        return authorizationInfo;
    }


    /**
     * 认证
     */

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token){

        String userName = token.getPrincipal().toString();
        TSysUser user = userService.load(userName);
        if(user == null){
            throw  new UnknownAccountException();
        }
        //不考虑加密
//        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
//              user.getUsername(),
//              user.getPassword(),
//              this.getName()
//        );
//        考虑加密
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
                user.getUsername(),
                user.getPassword(),
                ByteSource.Util.bytes(user.getSalt()),
                this.getName()
        );



        return  authenticationInfo;
    }

}
