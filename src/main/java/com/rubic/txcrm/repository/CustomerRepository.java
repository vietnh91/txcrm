package com.rubic.txcrm.repository;

import com.rubic.txcrm.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {

    @Query(value = "SELECT c.* FROM tx_customer c WHERE c.customer_name like %:customerName% order by customer_id LIMIT :page, :size",
            nativeQuery = true)
    Iterable<Customer> findByCustomerNameContaining(
            @Param("customerName") String customerName,
            @Param("page") Integer page,
            @Param("size") Integer size);

}
