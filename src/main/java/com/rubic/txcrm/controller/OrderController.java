package com.rubic.txcrm.controller;

import com.rubic.txcrm.model.Order;
import com.rubic.txcrm.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping(path="/order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @PostMapping("")
    public @ResponseBody Iterable<Order> all() {
        return orderService.filter(0, 10);
    }

}
