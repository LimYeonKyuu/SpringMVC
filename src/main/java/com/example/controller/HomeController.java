package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String index() {
        return "redirect:/boards";
    }


    /*@GetMapping("/board")
    public String board() {
        return "board";
    }*/
}