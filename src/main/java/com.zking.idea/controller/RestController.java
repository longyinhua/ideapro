package com.zking.idea.controller;

import com.zking.idea.util.DataProtocol;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.xml.crypto.Data;
import java.util.HashMap;
import java.util.Map;

@Controller
public class RestController {


    @RequiresPermissions("bookmanager:book:query")
    @RequestMapping("/bookmanager/book/query")
    public  Object queryBooks(){
        Map<String,String> book = new HashMap<>();
        book.put("id","10001");
        book.put("bookName","红楼梦");
        DataProtocol  data = new DataProtocol();
        return data;
    }

    @RequiresPermissions("bookmanager:book:add")
    @RequestMapping("/bookmanager/book/add")
    public  Object addBook(){
        DataProtocol data = new DataProtocol();
        data.setMessage("操作成功");
        return data;
    }

    public Object delBook(){
        DataProtocol data = new DataProtocol();
        data.setMessage("操作成功");
        return data;
    }



}
