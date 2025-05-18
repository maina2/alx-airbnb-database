# Index Performance Analysis

This document identifies high-usage columns in the User, Booking, and Property tables and measures query performance before and after adding indexes.

## Identified High-Usage Columns
Based on common query patterns (WHERE, JOIN, ORDER BY clauses):
- **User Table**:
  - `email`: Used in WHERE clauses for login and lookups (e.g., `SELECT * FROM User WHERE email = 'user@example.com'`).
- **Booking Table**:
  - `property_id`: Used in JOIN clauses (e.g., `Booking JOIN Property ON Booking.property_id = Property.property_id`).
  - `user_id`: Used in JOIN clauses (e.g., `Booking JOIN User ON Booking.user_id = User.user_id`).
  - `start_date`: Used in WHERE clauses for date range queries (e.g., `SELECT * FROM Booking WHERE start_date >= '2025-06-01'`).
- **Property Table**:
  - `host_id`: Used in JOIN clauses (e.g., `Property JOIN User ON Property.host_id = User.user_id`).

## Indexes Created
The following indexes were created in `database_index.sql`:
- `idx_user_email` on `User(email)`
- `idx_booking_property_id` on `Booking(property_id)`
- `idx_booking_user_id` on `Booking(user_id)`
- `idx_booking_start_date` on `Booking(start_date)`
- `idx_property_host_id` on `Property(host_id)`

## Performance Measurement
Performance was measured using `EXPLAIN` on sample queries before and after adding indexes. The database was populated with sample data from `database-script-0x02/seed.sql`.

### Sample Query 1: User Lookup by Email
```sql
EXPLAIN SELECT * FROM User WHERE email = 'john.doe@example.com';