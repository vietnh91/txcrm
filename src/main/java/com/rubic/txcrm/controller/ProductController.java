package com.rubic.txcrm.controller;

import com.rubic.txcrm.model.Product;
import com.rubic.txcrm.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(path="/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @PostMapping("/filter")
    public @ResponseBody Iterable<Product> all() {
        return productService.all();
    }

    @GetMapping("/get")
    public @ResponseBody Iterable<Product> get() {
        return productService.get();
    }
}
