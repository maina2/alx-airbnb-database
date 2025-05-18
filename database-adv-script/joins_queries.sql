-- joins_queries.sql
-- SQL queries demonstrating INNER JOIN, LEFT JOIN, and FULL OUTER JOIN for Airbnb-like database

-- 1. INNER JOIN: Retrieve all bookings and the respective users who made them
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM Booking b
INNER JOIN User u ON b.user_id = u.user_id;

-- 2. LEFT JOIN: Retrieve all properties and their reviews, including properties with no reviews
SELECT 
    p.property_id,
    p.name,
    p.location,
    p.pricepernight,
    r.review_id,
    r.rating,
    r.comment
FROM Property p
LEFT OUTER JOIN Review r ON p.property_id = r.property_id
ORDER BY p.property_id;

-- 3. FULL OUTER JOIN: Retrieve all users and all bookings, including users without bookings
-- MySQL emulation using LEFT JOIN only, as Booking.user_id is NOT NULL
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    b.booking_id,
    b.start_date,
    b.total_price,
    b.status
FROM User u
LEFT JOIN Booking b ON u.user_id = b.user_id;