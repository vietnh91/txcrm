package com.rubic.txcrm.service;

import com.rubic.txcrm.model.*;
import com.rubic.txcrm.repository.AddressRepository;
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

    @Autowired
    private AddressRepository addressRepository;

    public Iterable<Order> filter(int page, int size){

        return orderRepository.findAll(PageRequest.of(page, size, Sort.by(Sort.Direction.DESC, "orderId")));
    }

    public Long count(){

        return orderRepository.count();
    }

    public Order save(Order order){
        Customer customer = order.getCustomer();
        Address ship = order.getShip();

        if(customer != null && customer.getCustomerId() != null) {
            Optional<Customer> optionalCustomer = customerRepository.findById(customer.getCustomerId());
            Customer updateCustomer = optionalCustomer.get();
            updateCustomer.setCustomerName(customer.getCustomerName());
            order.setCustomer(updateCustomer);

            if(ship != null && ship.getAddressId() != null){
                Optional<Address> optionalAddress = addressRepository.findById(ship.getAddressId());
                Address newAddress = optionalAddress.get();
                order.setShip(newAddress);
            }else{
                ship.setCustomerId(customer.getCustomerId());
                ship = addressRepository.save(ship);
                order.setShip(ship);
            }

        }else {
            customer = customerRepository.save(customer);
            ship.setCustomerId(customer.getCustomerId());
            ship = addressRepository.save(ship);
            order.setCustomer(customer);
            order.setShip(ship);
        }

        for (OrderItem orderItem: order.getOrderItems()) {
            int product = orderItem.getProduct().getProductId();
            Optional<Product> optionalProduct = productRepository.findById(product);
            orderItem.setProduct(optionalProduct.get());
        }

        order.setOrderDate(new Date());
        return orderRepository.save(order);
    }

}
