package com.zking.idea.service;

import com.zking.idea.mapper.UserMapper;
import com.zking.idea.model.TSysUser;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Set;

@Service
public class IUserServiceImpl implements IUserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public TSysUser load(String userName) {
        return userMapper.load(userName);
    }

    @Override
    public Set<String> getRolesByUserName(String userName) {
        return userMapper.getRolesByUserName(userName);
    }

    @Override
    public Set<String> getPermissionsByUserName(String userName) {
        return userMapper.getpermissionsByUserName(userName);
    }
}
