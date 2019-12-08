package com.zking.idea.controller;


import com.zking.idea.model.TUserVue;
import com.zking.idea.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("/student")
public class StudentController {

    @Resource
    private UserService userService;

    /**
     * 在add方法前调用，用于获取年级列表、以便于页面显示
     * <p>
     * 注意：
     * 被@ModelAttribute注解的方法会在Controller每个方法执行之前都执行
     * 如果controller中包含多个请求url的需慎用
     */
//    显示下拉框里面的内容
    @ModelAttribute
    public void getGrades(Model model) {
        System.out.println("----getrades---");
        List<String> grades = Arrays.asList("一年级", "二年级", "三年级", "四年级");
        //放入model以便于页面使用
        model.addAttribute("grades", grades);
    }

    //    新增
    @RequestMapping("/add")
    public String add(Model model) {
        System.out.println("------");
        //必须加入句，作用是给springmvc的form标签提供数据，否则会报异常
        model.addAttribute("student", new TUserVue());
        return "addstu";
    }

    //    新增保存
    @RequestMapping("/save")
    public String save(@Validated(TUserVue.ValidataGroup.Add.class) @ModelAttribute("student") TUserVue userVue, BindingResult bindingResult) {
            System.out.println("--add--");
        if (bindingResult.hasErrors()) {
            System.out.println("验证不通过");
            return "addstu";
        }
        userService.add(userVue);
        return "index";
    }
//    修改保存
    @RequestMapping("/saveeit")
    public String saveeit(@Validated(TUserVue.ValidataGroup.Edit.class) @ModelAttribute("student") TUserVue userVue, BindingResult bindingResult){
        System.out.println("---update--");
        if(bindingResult.hasErrors()){
            System.out.println("验证不通过");
            return "updatestu";
        }
        userService.edit(userVue);
        return "index";
    }

    /**
     * 获取指定的学员信息，进入转发到修改页面
     *
     * @param userVue 该参数用于接收请求传过来的参数
     * @param model   该参数用于页面传值，修改页面的form表单通过
     *                modelAttribute属性接收值
     * @return定义转发到的页面
     */
//    修改
    @RequestMapping("/update")
    public String update( TUserVue userVue, Model model) {
        TUserVue stu = userService.load(userVue);
        model.addAttribute("student", stu);
        return "updatestu";
    }

    //       显示所有数据
    @RequestMapping("/all")
    public String All(Model model, TUserVue userVues) {

        List<TUserVue> lst = userService.LISTS(null);
        model.addAttribute("lst", lst);
        return "index";
    }


}
