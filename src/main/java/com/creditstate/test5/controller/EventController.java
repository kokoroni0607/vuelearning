package com.creditstate.test5.controller;

import com.creditstate.test5.entity.Info;
import com.creditstate.test5.entity.UserForm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * @author weiming.zhu
 * @date 2021/1/27 14:44
 */
@RequestMapping("/event")
@Controller
public class EventController {
    @RequestMapping(value = "/eventTest", method = RequestMethod.GET)
    public String eventTest(Model model) {
        model.addAttribute("currentName","小");
        return "/event/eventTest";
    }
    @RequestMapping(value = "/formTest", method = RequestMethod.GET)
    public String formTest(Model model) {
        return "/event/formTest";
    }

    @PostMapping("/axiosData")
    @ResponseBody
    public Info axiosData(@RequestBody UserForm userForm){
        return Info.builder().name(userForm.getName()).id("1").build();
    }
}
