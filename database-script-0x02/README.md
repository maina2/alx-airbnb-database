# Database Seed

This directory contains the SQL script to populate the AirBnB-like database with sample data.

## Files
- `seed.sql`: Contains `INSERT` statements to add sample data for User, Property, Booking, Payment, Review, and Message tables. The data simulates real-world usage with multiple users, properties, bookings, and interactions.

## Usage
Run the `seed.sql` script after creating the schema (from `database-script-0x01/schema.sql`).

```bash
mysql -u username -p database_name < seed.sql