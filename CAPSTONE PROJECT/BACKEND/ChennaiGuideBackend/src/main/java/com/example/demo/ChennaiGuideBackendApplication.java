// ChennaiGuideBackendApplication.java (Main Spring Boot file)

package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
public class ChennaiGuideBackendApplication {

    public static void main(String[] args) {
        SpringApplication.run(ChennaiGuideBackendApplication.class, args);
    }

    // *** THIS METHOD FIXES THE CORS ERROR ***
    // It allows any origin ("*") to access any endpoint ("/**") on your server.
    @Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurer() {
            @Override
            public void addCorsMappings(CorsRegistry registry) {
                registry.addMapping("/**").allowedOrigins("*");
            }
        };
    }
    // ***************************************
}