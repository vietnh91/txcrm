package com.rubic.txcrm.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "tx_product")
public class Product implements Serializable {

    @Id
    @Column(name = "product_id")
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer productId;

    @Column(name = "product_name")
    private String productName;

    @Column(name = "product_code")
    private String productCode;

    @Column(name = "product_description")
    private String productDescription;

    @Column(name = "price")
    private Double price;

    @OneToOne(cascade = CascadeType.ALL,
            fetch = FetchType.LAZY,
            optional = false)
    @JoinColumn(name = "unit")
    private Catalog unit;

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

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Catalog getUnit() {
        return unit;
    }

    public void setUnit(Catalog unit) {
        this.unit = unit;
    }
}
