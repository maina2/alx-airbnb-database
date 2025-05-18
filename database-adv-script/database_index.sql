-- database_index.sql
-- SQL commands to create indexes for improving query performance in Airbnb-like database

-- Index on User.email for frequent lookups in WHERE and JOIN clauses
CREATE INDEX idx_user_email ON User(email);

-- Index on Booking.property_id for JOIN and WHERE clauses
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index on Booking.user_id for JOIN and WHERE clauses
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index on Booking.start_date for range queries in WHERE clauses
CREATE INDEX idx_booking_start_date ON Booking(start_date);

-- Index on Property.host_id for JOIN clauses
CREATE INDEX idx_property_host_id ON Property(host_id);