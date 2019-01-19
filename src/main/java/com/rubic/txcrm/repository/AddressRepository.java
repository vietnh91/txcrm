package com.rubic.txcrm.repository;

import com.rubic.txcrm.model.Address;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AddressRepository extends JpaRepository<Address, Integer> {

    @Query(value = "SELECT a.* FROM tx_address a " +
            "WHERE a.customer_id = :customerId",
            nativeQuery = true)
    Iterable<Address> findByCustomerId(@Param("customerId") Integer customerName);

}
