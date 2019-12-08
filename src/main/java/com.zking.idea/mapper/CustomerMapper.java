package com.zking.idea.mapper;

import com.zking.idea.model.TCustomer;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface CustomerMapper {
    List<TCustomer> list(@Param("paramMap") Map<String,Object> paramMap);
}
