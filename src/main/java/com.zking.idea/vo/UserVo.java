package com.zking.idea.vo;


import com.zking.idea.model.TUserVue;

import java.util.List;

public class UserVo  extends TUserVue {

    private List<Integer> ids;

    public List<Integer> getIds() {
        return ids;
    }

    public void setIds(List<Integer> ids) {
        this.ids = ids;
    }
}
