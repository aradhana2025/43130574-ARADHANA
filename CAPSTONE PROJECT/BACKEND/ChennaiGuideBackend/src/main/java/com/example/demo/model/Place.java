package com.example.demo.model;

import jakarta.persistence.*;

@Entity
@Table(name = "places")
public class Place {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String location;
    private int rating;
    private String type; 
    
    @Column(name = "region_id")
    private Long regionId;

    private String status = "PENDING";
    
    @Column(name = "favorite_dish")
    private String favoriteDish; 
    
    @Column(name = "event_date")
    private String eventDate;

    // IMPORTANT: Ensure you have a no-args constructor
    public Place() {}

    // Getters and Setters (Generate these in Eclipse/STS: Source -> Generate Getters and Setters)
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getLocation() { return location; }
    public void setLocation(String location) { this.location = location; }
    public int getRating() { return rating; }
    public void setRating(int rating) { this.rating = rating; }
    public String getType() { return type; }
    public void setType(String type) { this.type = type; }
    public Long getRegionId() { return regionId; }
    public void setRegionId(Long regionId) { this.regionId = regionId; }
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
    public String getFavoriteDish() { return favoriteDish; }
    public void setFavoriteDish(String favoriteDish) { this.favoriteDish = favoriteDish; }
    public String getEventDate() { return eventDate; }
    public void setEventDate(String eventDate) { this.eventDate = eventDate; }
}