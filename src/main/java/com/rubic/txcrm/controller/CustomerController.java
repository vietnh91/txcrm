package com.rubic.txcrm.controller;

import com.rubic.txcrm.model.Customer;
import com.rubic.txcrm.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(path="/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @PostMapping("/filter")
    public @ResponseBody Iterable<Customer> filter(@RequestBody Condition condition)
    {
        return customerService.filter(condition);
    }
}
