package com.MainApp.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.MainApp.Entity.Customer;
@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
}
