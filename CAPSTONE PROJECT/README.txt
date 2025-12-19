PROJECT: CHENNAI CITY GUIDE

DONE BY: ARADHANA

PROJECT DESCRIPTION:

->  Overview This project is a community-driven web platform designed to help users discover and contribute to local points of interest in Chennai. It utilizes a Cobot (Collaborative Robot) workflow, where human users and system administrators work together to maintain a high-quality database of city spots.

->  Core Features

Personalized User Experience: Users receive a personalized greeting based on their registration details upon login.

Cobot Data Contribution: Registered users can submit new locations (spots) to the system. These spots enter a "Pending" state, acting as a collaborative suggestion to the system.

Admin Moderation (The Control Logic): An administrator reviews user-submitted data. Once approved, the data becomes visible to all users, completing the human-system collaborative loop.

Audit Logging: The system automatically tracks every contribution with created_at and created_by timestamps to ensure data integrity.

-> Technical Stack

Backend: Developed using Java Spring Boot, managing RESTful APIs and business logic.

Frontend: A responsive interface built with HTML5, CSS3, and JavaScript.

Database: MySQL is used to store relational data across seven tables, including users, user_regions, and spots.

API Testing: All endpoints are verified using Postman.


1. FOLDER CONTENTS

BACKEND: Spring Boot Source Code (Maven).

DATABASE: smart_city_guide.sql (MySQL Export).

FRONTEND: UI files (HTML/CSS/JS).

REPORT: 30+ Page Project Report (PDF).

2. HOW TO RUN

Database: Import smart_city_guide.sql into MySQL Workbench.

Backend: Import the BACKEND folder into your IDE (Eclipse/STS) and run it on Port 8085.

Frontend: Open index.html from the FRONTEND folder in Chrome.

3. PROJECT DEMO VIDEO LINK

Recording Link: 

https://drive.google.com/file/d/1FONHqe36sSQ8FsrD4mX2TZJiQbAZn2Ao/view?usp=sharing  
 
