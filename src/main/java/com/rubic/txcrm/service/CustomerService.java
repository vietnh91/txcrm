package com.rubic.txcrm.service;

import com.rubic.txcrm.controller.Condition;
import com.rubic.txcrm.model.Customer;
import com.rubic.txcrm.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("customerService")
public class CustomerService {


    @Autowired
    private CustomerRepository customerRepository;

    public Iterable<Customer> filter(Condition condition){

        return customerRepository.findByCustomerNameContaining(
                condition.getCustomerName(),
                condition.getPage() != null ? condition.getPage() : 0,
                condition.getSize() != null ? condition.getSize() : 10);
    }

}
