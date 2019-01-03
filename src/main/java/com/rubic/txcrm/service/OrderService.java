package com.rubic.txcrm.service;

import com.rubic.txcrm.model.Order;
import com.rubic.txcrm.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service("orderService")
public class OrderService {


    @Autowired
    private OrderRepository orderRepository;

    public Iterable<Order> filter(int page, int size){

        return orderRepository.findAll(PageRequest.of(page, size, Sort.by(Sort.Direction.DESC, "orderId")));
    }

}
