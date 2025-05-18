# SQL Joins Queries

This directory contains SQL queries demonstrating the use of different types of joins for the Airbnb-like database.

## Files
- `joins_queries.sql`: Contains three SQL queries:
  1. **INNER JOIN**: Retrieves all bookings and the users who made them.
  2. **LEFT JOIN**: Retrieves all properties and their reviews, including properties without reviews.
  3. **FULL OUTER JOIN**: Retrieves all users and bookings, including users without bookings and bookings not linked to users. For MySQL, this is emulated using LEFT JOIN and RIGHT JOIN with UNION. A commented PostgreSQL-native FULL OUTER JOIN is also provided.



# SQL Subqueries

This directory contains SQL queries demonstrating the use of non-correlated and correlated subqueries for the Airbnb-like database.

## Files
- `subqueries.sql`: Contains two SQL queries:
  1. **Non-correlated subquery**: Finds all properties with an average rating greater than 4.0.
  2. **Correlated subquery**: Finds users who have made more than 3 bookings.

# SQL Aggregations and Window Functions

This directory contains SQL queries demonstrating the use of aggregation and window functions for the Airbnb-like database.

## Files
- `aggregations_and_window_functions.sql`: Contains two SQL queries:
  1. **Aggregation**: Finds the total number of bookings made by each user using COUNT and GROUP BY.
  2. **Window function**: Ranks properties based on the total number of bookings using RANK.