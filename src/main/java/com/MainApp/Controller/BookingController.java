package com.MainApp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.MainApp.Entity.Booking;
import com.MainApp.Entity.Car;
import com.MainApp.Entity.Customer;
import com.MainApp.Service.BookingService;
import com.MainApp.Service.CarService;
import com.MainApp.Service.CustomerService;

@Controller
public class BookingController {

    @Autowired
    private BookingService bookingService;

    @Autowired
    private CarService carService;

    @Autowired
    private CustomerService customerService;

    // Booking form
    @GetMapping("/book")
    public String bookingForm(Model model) {
        model.addAttribute("cars", carService.getAll());
        model.addAttribute("customers", customerService.getAll());
        return "booking";
    }

    // Save Booking
    @PostMapping("/saveBooking")
    public String saveBooking(@RequestParam int carId, @RequestParam int customerId) {
        Booking b = new Booking();
        Car c = new Car(); c.setId(carId);
        Customer cu = new Customer(); cu.setId(customerId);
        b.setCar(c);
        b.setCustomer(cu);
        bookingService.save(b);
        return "redirect:/viewBookings";
    }

    // View Bookings
    @GetMapping("/viewBookings")
    public String viewBookings(Model model) {
        model.addAttribute("list", bookingService.getAll());
        return "viewBookings";
    }

    // Edit Booking form
    @GetMapping("/editBooking/{id}")
    public String editBooking(@PathVariable int id, Model model) {
        Booking b = bookingService.getById(id);
        model.addAttribute("booking", b);
        model.addAttribute("cars", carService.getAll());
        model.addAttribute("customers", customerService.getAll());
        return "editBooking";
    }

    // Update Booking
    @PostMapping("/updateBooking")
    public String updateBooking(@RequestParam int id, @RequestParam int carId, @RequestParam int customerId) {
        Booking b = new Booking();
        b.setId(id);
        Car c = new Car(); c.setId(carId);
        Customer cu = new Customer(); cu.setId(customerId);
        b.setCar(c);
        b.setCustomer(cu);
        bookingService.updateBooking(id, b);
        return "redirect:/viewBookings";
    }

    // Delete Booking
    @GetMapping("/deleteBooking/{id}")
    public String deleteBooking(@PathVariable int id) {
        bookingService.deleteBooking(id);
        return "redirect:/viewBookings";
    }
}
