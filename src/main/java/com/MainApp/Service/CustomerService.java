package com.MainApp.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MainApp.Entity.Customer;
import com.MainApp.Repository.CustomerRepository;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepo;

    public Customer save(Customer c) { return customerRepo.save(c); }

    public List<Customer> getAll() { return customerRepo.findAll(); }

    public Customer getById(int id) { return customerRepo.findById(id).orElse(null); }

    public void updateById(int id, Customer c) {
        Optional<Customer> op = customerRepo.findById(id);
        if(op.isPresent()) {
            Customer cu = op.get();
            cu.setName(c.getName());
            cu.setMobile(c.getMobile());
            customerRepo.save(cu);
        }
    }

    public void deleteById(int id) { customerRepo.deleteById(id); }
}
