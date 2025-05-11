# Database Schema

This directory contains the SQL script to create the database schema for an AirBnB-like application.

## Files
- `schema.sql`: Contains `CREATE TABLE` statements for the User, Property, Booking, Payment, Review, and Message tables. Includes primary keys, foreign keys, constraints (e.g., UNIQUE, NOT NULL, ENUM, CHECK), and indexes for performance.

## Usage
Run the `schema.sql` script in a MySQL/PostgreSQL database to create the tables and indexes.

```bash
mysql -u username -p database_name < schema.sql