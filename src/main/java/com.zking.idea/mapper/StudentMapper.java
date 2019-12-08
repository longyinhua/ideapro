package com.zking.idea.mapper;


import com.zking.idea.model.TUserVue;
import com.zking.idea.vo.UserVo;

import java.util.List;

public interface StudentMapper {

   int add(TUserVue user);

   int edit(TUserVue user);

   TUserVue load(TUserVue user);

   List<TUserVue> LISTS(UserVo user);





}
