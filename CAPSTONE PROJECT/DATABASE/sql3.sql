USE chennai_guide;
-- This moves your regions from the dashboard to the home page blocks
UPDATE user_regions SET status = 'APPROVED' WHERE region_name IN ('ADYAR', 'MARINA', 'T-NAGAR');
SELECT * FROM user_regions;