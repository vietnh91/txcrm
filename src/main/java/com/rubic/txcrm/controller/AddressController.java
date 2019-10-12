package com.rubic.txcrm.controller;

import com.rubic.txcrm.model.Address;
import com.rubic.txcrm.model.Condition;
import com.rubic.txcrm.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(path="/address")
public class AddressController {

    @Autowired
    private AddressService addressService;

    @PostMapping("/filter")
    public @ResponseBody Iterable<Address> filter(@RequestBody Condition condition)
    {
        return addressService.filter(condition);
    }
}
