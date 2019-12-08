package com.zking.idea.service;

import com.zking.idea.model.TUserVue;
import com.zking.idea.util.PageBean;
import com.zking.idea.vo.UserVo;

import java.util.List;

public interface UserService {
    int add(TUserVue user);

    int edit(TUserVue user);

    TUserVue load(TUserVue user);

    List<TUserVue> LISTS(UserVo user);

    List<TUserVue> listPaging(UserVo user, PageBean pagebean);

}
