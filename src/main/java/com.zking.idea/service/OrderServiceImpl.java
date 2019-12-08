package com.zking.idea.service;

import com.zking.idea.mapper.OrderMapper;
import com.zking.idea.model.TOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class OrderServiceImpl implements OrderService {

    @Resource
    private OrderMapper orderMapper;

    @Override
    public List<TOrder> list(TOrder order) {
        return orderMapper.list(order);
    }
}
