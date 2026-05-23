package com.MainApp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.MainApp.Entity.Customer;
import com.MainApp.Service.CustomerService;

@Controller
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    // Add Customer Form
    @GetMapping("/addCustomer")
    public String customerForm() { return "addCustomer"; }

    // Save Customer
    @PostMapping("/saveCustomer")
    public String saveCustomer(@ModelAttribute Customer customer) {
        customerService.save(customer);
        return "redirect:/viewCustomers";
    }

    // View Customers
    @GetMapping("/viewCustomers")
    public String viewCustomers(Model model) {
        model.addAttribute("list", customerService.getAll());
        return "viewCustomers";
    }

    // Edit Customer
    @GetMapping("/editCustomer/{id}")
    public String editCustomer(@PathVariable int id, Model model) {
        model.addAttribute("customer", customerService.getById(id));
        return "editCustomer";
    }

    // Update Customer
    @PostMapping("/updateCustomer")
    public String updateCustomer(@ModelAttribute Customer customer) {
        customerService.updateById(customer.getId(), customer);
        return "redirect:/viewCustomers";
    }

    // Delete Customer
    @GetMapping("/deleteCustomer/{id}")
    public String deleteCustomer(@PathVariable int id) {
        customerService.deleteById(id);
        return "redirect:/viewCustomers";
    }
}
