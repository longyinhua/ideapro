package com.zking.idea.service;

import com.zking.idea.mapper.NewMapper;
import com.zking.idea.model.TNews;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class NewServiceImpl implements NewService {

    @Resource
    private NewMapper newMapper;

    @Override
    public List<TNews> list(TNews news) {
        return newMapper.list(news);
    }
}
