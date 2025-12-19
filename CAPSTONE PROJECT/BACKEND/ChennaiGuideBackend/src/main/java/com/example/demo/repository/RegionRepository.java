package com.example.demo.repository;

import com.example.demo.model.Region;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface RegionRepository extends JpaRepository<Region, Long> {
    List<Region> findByStatus(String status);
}