USE chennai_guide;

-- Add columns to track the user and the time
ALTER TABLE user_regions 
ADD COLUMN created_by VARCHAR(255),
ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- View the data
SELECT region_name, status, created_by, created_at FROM user_regions;
SELECT * FROM user_regions;