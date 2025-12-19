package com.example.demo.controller;

import com.example.demo.model.User;
import com.example.demo.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*")
public class UserController {
    @Autowired private UserRepository userRepository;

    @PostMapping("/login")
    public String login(@RequestBody User loginReq) {
        User user = userRepository.findByUsername(loginReq.getUsername());
        if(user != null && user.getPasswordHash().equals(loginReq.getPasswordHash())) {
            return "SUCCESS:" + user.getRole(); // Returns SUCCESS:ADMIN for Aara
        }
        return "FAILURE";
    }

    @GetMapping("/admin/users")
    public List<User> getAllUsers() { return userRepository.findAll(); }
}