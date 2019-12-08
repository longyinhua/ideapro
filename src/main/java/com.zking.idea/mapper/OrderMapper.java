package com.zking.idea.mapper;


import com.zking.idea.model.TOrder;

import java.util.List;

public interface OrderMapper {

    List<TOrder> list(TOrder order);
}
