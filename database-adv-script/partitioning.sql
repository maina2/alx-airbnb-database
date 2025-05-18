-- partitioning.sql
-- SQL commands to implement and test partitioning on the Booking table

-- Drop existing Booking table if it exists (for clean setup)
DROP TABLE IF EXISTS Booking;

-- Create Booking table with partitioning by RANGE on start_date
CREATE TABLE Booking (
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (property_id) REFERENCES Property(property_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
) PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION p_future VALUES LESS THAN MAXVALUE
);

-- Test query performance on partitioned table
-- Query: Fetch bookings for a specific date range
EXPLAIN ANALYZE SELECT 
    booking_id,
    start_date,
    end_date,
    total_price,
    status
FROM Booking
WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';