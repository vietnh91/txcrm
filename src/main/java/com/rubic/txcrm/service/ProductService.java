package com.rubic.txcrm.service;

import com.rubic.txcrm.model.Product;
import com.rubic.txcrm.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("productService")
public class ProductService {

    public static Iterable<Product> products;

    @Autowired
    private ProductRepository productRepository;

    public Iterable<Product> all() {
        if( this.products != null && products.iterator().next() != null){
            System.out.println("cache...");
            return this.products;
        }else {
            this.products = productRepository.findAll();
        }
        return this.products;
    }

    public Iterable<Product> get(){
        return productRepository.findAll();
    }
}
