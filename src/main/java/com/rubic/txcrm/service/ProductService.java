package com.rubic.txcrm.service;

import com.rubic.txcrm.model.Product;
import com.rubic.txcrm.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("productService")
public class ProductService {


    @Autowired
    private ProductRepository productRepository;

    public Iterable<Product> all(){
        return productRepository.findAll();
    }

    public Iterable<Product> get(){
        return productRepository.findAll();
    }
}
