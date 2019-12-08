package com.zking.idea.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zking.idea.mapper.StudentMapper;
import com.zking.idea.model.TUserVue;
import com.zking.idea.util.PageBean;
import com.zking.idea.vo.UserVo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private StudentMapper usermapper;

    @Override
    public int add(TUserVue user) {
        return usermapper.add(user);
    }

    @Override
    public int edit(TUserVue user) {
        return usermapper.edit(user);
    }

    @Override
    public TUserVue load(TUserVue user) {

        return usermapper.load(user);
    }

    @Override
    public List<TUserVue> LISTS(UserVo user) {
        return usermapper.LISTS(user);
    }

    @Override
    public List<TUserVue>  listPaging(UserVo user, PageBean pagebean) {
        return usermapper.LISTS(user);
    }

}
