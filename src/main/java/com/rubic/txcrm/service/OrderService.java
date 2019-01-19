package com.rubic.txcrm.service;

import com.rubic.txcrm.model.Customer;
import com.rubic.txcrm.model.Order;
import com.rubic.txcrm.model.OrderItem;
import com.rubic.txcrm.model.Product;
import com.rubic.txcrm.repository.CustomerRepository;
import com.rubic.txcrm.repository.OrderRepository;
import com.rubic.txcrm.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.Date;
import java.util.Optional;

@Service("orderService")
public class OrderService {


    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private ProductRepository productRepository;

    public Iterable<Order> filter(int page, int size){

        return orderRepository.findAll(PageRequest.of(page, size, Sort.by(Sort.Direction.DESC, "orderId")));
    }

    public Long count(){

        return orderRepository.count();
    }

    public Order save(Order order){
        Customer customer = order.getCustomer();
        if(customer != null && customer.getCustomerId() != null) {
            Optional<Customer> byId = customerRepository.findById(customer.getCustomerId());
            Customer updateCustomer = byId.get();
            updateCustomer.setAddress(customer.getAddress());
            updateCustomer.setCustomerName(customer.getCustomerName());
            order.setCustomer(updateCustomer);
        }else {
            customer.setAddress(order.getShippingAddress());
            customer = customerRepository.save(customer);
            order.setCustomer(customer);
        }

        for (OrderItem orderItem: order.getOrderItems()) {
            int product = orderItem.getProduct().getProductId();
            Optional<Product> byIdProduct = productRepository.findById(product);
            orderItem.setProduct(byIdProduct.get());
        }
        order.setOrderDate(new Date());
        return orderRepository.save(order);
    }

}
