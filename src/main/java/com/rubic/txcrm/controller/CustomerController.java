package com.rubic.txcrm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(path="/customer")
public class CustomerController {

    @GetMapping("")
    public @ResponseBody String get() {
        return "customerrrrrr";
    }
}
