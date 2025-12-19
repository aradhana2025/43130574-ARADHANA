package com.example.demo.repository;

import com.example.demo.model.Place;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface PlaceRepository extends JpaRepository<Place, Long> {
    // This line clears the "cannot find symbol" error at line 31
    List<Place> findByStatus(String status);
    
    // This line is required for the Food, Shopping, and Party blocks to filter data
    List<Place> findByRegionIdAndTypeAndStatus(Long regionId, String type, String status);
}