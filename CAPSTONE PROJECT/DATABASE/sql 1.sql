-- 1. Create the Database
CREATE DATABASE IF NOT EXISTS chennai_guide;
USE chennai_guide;

-- 2. Users Table (Includes Full Name, DOB, and Email for Registration)
CREATE TABLE IF NOT EXISTS users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255),
    dob DATE,
    email VARCHAR(255) UNIQUE,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL, -- or password_hash depending on your backend
    role VARCHAR(50) DEFAULT 'USER'
);

-- 3. Regions Table (Tracks who added the region and when)
CREATE TABLE IF NOT EXISTS user_regions (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    region_name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'PENDING', -- PENDING, APPROVED, REJECTED
    created_by VARCHAR(255), -- Stores the username of the creator
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 4. Spots Table (Food, Shopping, Events)
CREATE TABLE IF NOT EXISTS spots (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255),
    type VARCHAR(50), -- FOOD, SHOPPING, PARTY
    region_id BIGINT,
    favorite_dish VARCHAR(255), -- For Food
    event_date DATE,            -- For Events
    rating INT,
    status VARCHAR(50) DEFAULT 'PENDING',
    created_by VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (region_id) REFERENCES user_regions(id) ON DELETE CASCADE
);

-- 5. Login Logs Table (To see who logged in and when)
CREATE TABLE IF NOT EXISTS login_logs (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    login_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 6. Insert an Initial Admin (So you can log in as Admin immediately)
-- Note: Replace 'admin123' with your actual password or hash
INSERT IGNORE INTO users (full_name, username, password, role) 
VALUES ('Aara Admin', 'admin', 'admin123', 'ADMIN');

-- 7. View your tables to verify structure
DESC users;
DESC user_regions;
DESC spots;