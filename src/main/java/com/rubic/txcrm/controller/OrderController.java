package com.rubic.txcrm.controller;

import com.rubic.txcrm.model.Condition;
import com.rubic.txcrm.model.Order;
import com.rubic.txcrm.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping(path="/order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @PostMapping("/filter")
    public @ResponseBody Iterable<Order> filter(@RequestBody Condition condition) {

        return orderService.filter(condition.getPage(), condition.getSize());
    }

    @PostMapping("/count")
    public @ResponseBody Long count(@RequestBody Condition condition) {

        return orderService.count();
    }

    @PostMapping("/save")
    public @ResponseBody Order save(@RequestBody Order order) {
        return orderService.save(order);
    }

}
