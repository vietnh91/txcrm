package com.rubic.txcrm.service;

import com.rubic.txcrm.model.Customer;
import com.rubic.txcrm.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service("customerService")
public class CustomerService {


    @Autowired
    private CustomerRepository customerRepository;

    public Iterable<Customer> filter(int page, int size){

        return customerRepository.findAll(PageRequest.of(page, size, Sort.by(Sort.Direction.DESC, "customerId")));
    }

}
