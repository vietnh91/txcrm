package com.rubic.txcrm.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CustomerController {

    @GetMapping("/customer")
    String all() {
        return "demoooo";
    }
}
