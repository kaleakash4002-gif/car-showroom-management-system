package com.MainApp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.MainApp.Entity.Car;
import com.MainApp.Service.CarService;

@Controller
public class CarController {

    @Autowired
    private CarService carService;

    // Add Car Form
    @GetMapping("/")
    public String carForm() { return "index"; }

    // Save Car
    @PostMapping("/saveCar")
    public String saveCar(@ModelAttribute Car car) {
        carService.save(car);
        return "redirect:/viewCars";
    }

    // View Cars
    @GetMapping("/viewCars")
    public String viewCars(Model model) {
        model.addAttribute("list", carService.getAll());
        return "viewCars";
    }

    // Edit Car
    @GetMapping("/editCar/{id}")
    public String editCar(@PathVariable int id, Model model) {
        model.addAttribute("car", carService.getById(id));
        return "editCar";
    }

    // Update Car
    @PostMapping("/updateCar")
    public String updateCar(@ModelAttribute Car car) {
        carService.updateById(car.getId(), car);
        return "redirect:/viewCars";
    }

    // Delete Car
    @GetMapping("/deleteCar/{id}")
    public String deleteCar(@PathVariable int id) {
        carService.deleteById(id);
        return "redirect:/viewCars";
    }
}
