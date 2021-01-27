package com.creditstate.test5.controller;

import com.creditstate.test5.entity.Info;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.stream.Collectors;
import java.util.stream.IntStream;


/**
 * @author weiming.zhu
 * @date 2021/1/15 15:01
 */
@RequestMapping("/testHtml")
@Controller
public class TestHtmlController {

    @RequestMapping(value = "/page1", method = RequestMethod.GET)
    public String discreditcom(Model model) {
        return "/page1";
    }

    @GetMapping("/learning")
    public String learning(){
        return "/learning";
    }

    @GetMapping("/if")
    public String ifPage(Model model){
        model.addAttribute("message","true");
        return "/if";
    }
    @GetMapping("/list")
    public String listPage(Model model){
        model.addAttribute("numbers",IntStream.range(0,9).mapToObj(Integer::toString).collect(Collectors.toList()));
        return "/list";
    }

    @GetMapping("/axios")
    public String axios(){
        return "/axios";
    }
    @PostMapping("/axiosData")
    @ResponseBody
    public Info axiosData(Integer id){
        return Info.builder().name("test").build();
    }
}
