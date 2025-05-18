# SQL Joins Queries

This directory contains SQL queries demonstrating the use of different types of joins for the Airbnb-like database.

## Files
- `joins_queries.sql`: Contains three SQL queries:
  1. **INNER JOIN**: Retrieves all bookings and the users who made them.
  2. **LEFT JOIN**: Retrieves all properties and their reviews, including properties without reviews.
  3. **FULL OUTER JOIN**: Retrieves all users and bookings, including users without bookings and bookings not linked to users. For MySQL, this is emulated using LEFT JOIN and RIGHT JOIN with UNION. A commented PostgreSQL-native FULL OUTER JOIN is also provided.

## Usage
Run the `joins_queries.sql` script in a MySQL or PostgreSQL database after creating the schema (from `database-script-0x01/schema.sql`) and seeding data (from `database-script-0x02/seed.sql`).

mysql -u username -p database_name < joins_queries.sql