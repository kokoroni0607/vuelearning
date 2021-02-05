package com.creditstate.test5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author weiming.zhu
 * @date 2021/2/3 14:59
 */
@Controller
@RequestMapping("component")
public class ComponentController {

    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String test(Model model) {
        return "/component/test";
    }
}
