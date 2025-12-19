package com.example.demo.controller;

import com.example.demo.model.Region;
import com.example.demo.repository.RegionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*")
public class RegionController {
    @Autowired private RegionRepository regionRepository;

    @GetMapping("/regions")
    public List<Region> getApproved() { return regionRepository.findByStatus("APPROVED"); }

    @PostMapping("/regions/add")
    public Region add(@RequestBody Region r) { 
        r.setStatus("PENDING"); 
        return regionRepository.save(r); 
    }

    @GetMapping("/admin/regions/pending")
    public List<Region> getPending() { return regionRepository.findByStatus("PENDING"); }

    @PutMapping("/admin/regions/{id}/approve")
    public Region approve(@PathVariable Long id) {
        Region r = regionRepository.findById(id).orElseThrow();
        r.setStatus("APPROVED");
        return regionRepository.save(r);
    }
    
    @DeleteMapping("/admin/regions/{id}/reject") // Check this path!
    public String deleteRegion(@PathVariable Long id) {
        try {
            regionRepository.deleteById(id); // Deletes the row from user_regions
            return "DELETED";
        } catch (Exception e) {
            return "ERROR";
        }
    }
    
}