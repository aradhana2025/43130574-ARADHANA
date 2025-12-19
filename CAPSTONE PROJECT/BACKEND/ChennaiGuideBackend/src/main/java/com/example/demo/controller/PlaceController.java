package com.example.demo.controller;

import com.example.demo.model.Place;
import com.example.demo.repository.PlaceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/spots")
@CrossOrigin(origins = "*")
public class PlaceController {

    @Autowired
    private PlaceRepository placeRepository;

    // USER ACTION: Submit a new spot for approval
    @PostMapping("/add")
    public Place add(@RequestBody Place p) {
        p.setStatus("PENDING"); // New spots start as pending
        return placeRepository.save(p);
    }

    // PUBLIC ACTION: Fetch approved spots for the themed blocks
    @GetMapping("/region/{rid}/type/{t}")
    public List<Place> getApproved(@PathVariable Long rid, @PathVariable String t) {
        return placeRepository.findByRegionIdAndTypeAndStatus(rid, t, "APPROVED");
    }

    // ADMIN ACTION: Fetch all pending spots for the Moderation Dashboard
    @GetMapping("/admin/pending")
    public List<Place> getPending() {
        // This line removes the red error at line 31 in your screenshot
        return placeRepository.findByStatus("PENDING");
    }

    // ADMIN ACTION: Grant permission to a spot
    @PutMapping("/admin/{id}/approve")
    public String approve(@PathVariable Long id) {
        return placeRepository.findById(id).map(p -> {
            p.setStatus("APPROVED");
            placeRepository.save(p);
            return "Spot Approved!";
        }).orElse("Not Found");
    }
    
    @DeleteMapping("/admin/{id}/reject")
    public String rejectSpot(@PathVariable Long id) {
        placeRepository.deleteById(id);
        return "Spot Rejected and Deleted";
    }
    
}