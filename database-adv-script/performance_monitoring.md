# Database Performance Monitoring Report

This document analyzes the performance of frequently used queries, identifies bottlenecks, implements optimizations, and reports improvements.

## Performance Monitoring
Two frequently used queries were analyzed using `EXPLAIN ANALYZE`:

### Query 1: Fetch Bookings by Date Range
```sql
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status
FROM Booking b
WHERE b.start_date BETWEEN '2025-01-01' AND '2025-12-31';