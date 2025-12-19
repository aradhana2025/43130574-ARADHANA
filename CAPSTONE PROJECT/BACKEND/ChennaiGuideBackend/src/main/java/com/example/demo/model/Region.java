package com.example.demo.model;

import jakarta.persistence.*;

@Entity
@Table(name = "user_regions")
public class Region {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String regionName;
    private String status = "PENDING"; // New regions stay pending until approved

    public Region() {}
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getRegionName() { return regionName; }
    public void setRegionName(String regionName) { this.regionName = regionName; }
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}