-- database_index.sql
-- SQL commands to create indexes and measure query performance for Airbnb-like database

-- Create indexes for high-usage columns
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_start_date ON Booking(start_date);
CREATE INDEX idx_property_host_id ON Property(host_id);

-- Measure performance with EXPLAIN ANALYZE for sample queries
-- Query 1: User lookup by email
EXPLAIN ANALYZE SELECT * FROM User WHERE email = 'john.doe@example.com';

-- Query 2: Booking join with Property
EXPLAIN ANALYZE SELECT b.booking_id, p.name 
FROM Booking b 
JOIN Property p ON b.property_id = p.property_id 
WHERE b.start_date >= '2025-06-01';

-- Query 3: User bookings
EXPLAIN ANALYZE SELECT u.user_id, u.first_name, COUNT(b.booking_id) 
FROM User u 
LEFT JOIN Booking b ON u.user_id = b.user_id 
GROUP BY u.user_id, u.first_name;