package com.rubic.txcrm.model;

import javax.persistence.*;

@Entity
@Table(name = "tx_customer")
public class Customer {

    @Id
    @Column(name = "customer_id")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer customerId;

    @Column(name = "customer_name")
    private String customerName;

    @Column(name = "address")
    private String address;

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
