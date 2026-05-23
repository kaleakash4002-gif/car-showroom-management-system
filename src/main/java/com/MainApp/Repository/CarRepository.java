package com.MainApp.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.MainApp.Entity.Car;
@Repository
public interface CarRepository extends JpaRepository<Car, Integer> {
}
