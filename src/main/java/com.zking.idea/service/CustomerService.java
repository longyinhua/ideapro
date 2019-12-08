package com.zking.idea.service;


import com.zking.idea.model.TCustomer;

import java.util.List;
import java.util.Map;

public interface CustomerService {

    List<TCustomer> list(Map<String,Object> paramMap);
}
