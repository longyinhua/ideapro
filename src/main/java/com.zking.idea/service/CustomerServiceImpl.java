package com.zking.idea.service;

import com.zking.idea.mapper.CustomerMapper;
import com.zking.idea.model.TCustomer;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;


@Service
public class CustomerServiceImpl implements CustomerService {

    @Resource
    private CustomerMapper customerMapper;

    @Override
    public List<TCustomer> list(Map<String, Object> paramMap) {
        return customerMapper.list(paramMap);
    }
}
