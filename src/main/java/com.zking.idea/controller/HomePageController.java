package com.zking.idea.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomePageController {

    @RequestMapping("/HomePage")
    public String goHome(){

        return "index";
    }

}
