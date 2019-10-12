package com.rubic.txcrm.service;

import com.rubic.txcrm.model.Condition;
import com.rubic.txcrm.model.Address;
import com.rubic.txcrm.repository.AddressRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("addressService")
public class AddressService {


    @Autowired
    private AddressRepository addressRepository;

    public Iterable<Address> filter(Condition condition){

        return addressRepository.findByCustomerId(
                condition.getCustomerId());
    }

}
