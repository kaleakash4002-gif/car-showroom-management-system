package com.MainApp.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MainApp.Entity.Booking;
import com.MainApp.Repository.BookingRepository;

@Service
public class BookingService {

    @Autowired
    private BookingRepository bookingRepo;

    // Add Booking
    public Booking save(Booking b) { return bookingRepo.save(b); }

    // View All Bookings
    public List<Booking> getAll() { return bookingRepo.findAll(); }

    // Get by Id
    public Booking getById(int id) {
        return bookingRepo.findById(id).orElse(null);
    }

    // Update Booking
    public void updateBooking(int id, Booking b) {
        Optional<Booking> op = bookingRepo.findById(id);
        if(op.isPresent()) {
            Booking oldBooking = op.get();
            oldBooking.setCar(b.getCar());
            oldBooking.setCustomer(b.getCustomer());
            bookingRepo.save(oldBooking);
        }
    }

    // Delete Booking
    public void deleteBooking(int id) {
        bookingRepo.deleteById(id);
    }
}
