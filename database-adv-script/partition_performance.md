# Partition Performance Report

This document outlines the implementation of table partitioning on the Booking table and evaluates its impact on query performance.

## Partitioning Implementation
The Booking table was partitioned by RANGE on the `start_date` column (by year) in `partitioning.sql`:
- Partitions: 
  - `p2023`: Bookings before 2024
  - `p2024`: Bookings for 2024
  - `p2025`: Bookings for 2025
  - `p_future`: Bookings for 2026 and beyond
- Partitioning was chosen based on `start_date` as it’s commonly used in range queries (e.g., `WHERE start_date BETWEEN ...`).

## Performance Testing
The performance of a sample query was tested using `EXPLAIN ANALYZE` on the partitioned Booking table:
```sql
EXPLAIN ANALYZE SELECT 
    booking_id,
    start_date,
    end_date,
    total_price,
    status
FROM Booking
WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';