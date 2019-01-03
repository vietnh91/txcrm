package com.rubic.txcrm.model;

import javax.persistence.*;

@Entity
@Table(name = "tx_product")
public class Product {

    @Id
    @Column(name = "product_id")
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer producId;


    @Column(name = "product_name")
    private String productName;

    @Column(name = "product_code")
    private String productCode;

    public Integer getProducId() {
        return producId;
    }

    public void setProducId(Integer producId) {
        this.producId = producId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }
}
