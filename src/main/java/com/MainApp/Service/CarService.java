package com.MainApp.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.MainApp.Entity.Car;
import com.MainApp.Repository.CarRepository;

@Service
public class CarService {

    @Autowired
    private CarRepository carRepo;

    public Car save(Car c) { return carRepo.save(c); }

    public List<Car> getAll() { return carRepo.findAll(); }

    public Car getById(int id) {
        return carRepo.findById(id).orElse(null);
    }

    public void updateById(int id, Car c) {
        Optional<Car> op = carRepo.findById(id);
        if(op.isPresent()) {
            Car carToUpdate = op.get();
            carToUpdate.setBrand(c.getBrand());
            carToUpdate.setModel(c.getModel());
            carToUpdate.setPrice(c.getPrice());
            carRepo.save(carToUpdate);
        }
    }

    public void deleteById(int id) { carRepo.deleteById(id); }
}
