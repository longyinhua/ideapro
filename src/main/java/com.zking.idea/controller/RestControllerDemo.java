package com.zking.idea.controller;


import com.zking.idea.model.TUserVue;
import com.zking.idea.service.UserService;
import com.zking.idea.util.DataProtocol;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.xml.crypto.Data;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class RestControllerDemo {

    @Resource
    private UserService studentService;

    @RequestMapping("/rest/loaduser")
    public Object loadStudent(TUserVue userVue){
       TUserVue stu = studentService.load(userVue);
        DataProtocol data = new DataProtocol();
        data.setCode(DataProtocol.SUCCESS);
        data.setData(stu);

       return data;
    }

    @RequestMapping("rest/addUser")
    public Object addUser(@Validated( TUserVue.ValidataGroup.Add.class) TUserVue userVue, BindingResult bindingResult){
     DataProtocol obj = new DataProtocol();
     if(bindingResult.hasErrors()){
         Map<String,String> errors = new HashMap<>();
         //获取所有的校验证错误信息，放入map中通过指定格式返回
         List<FieldError> fieldErrors = bindingResult.getFieldErrors();
         for (FieldError error:fieldErrors){
             errors.put(error.getField(),error.getDefaultMessage());
         }
         obj.setCode(DataProtocol.FAIL);
         obj.setErrors(errors);
     }else{
         obj.setCode(DataProtocol.SUCCESS);
         obj.setMessage("操作成功");
     }
      return obj;
    }

}
