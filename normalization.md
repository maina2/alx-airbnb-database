# Database Normalization

The AirBnB-like database design was reviewed and normalized to the Third Normal Form (3NF). Below are the steps and findings:

## 1NF (First Normal Form)
- All attributes are atomic (no multi-valued attributes or repeating groups).
- Each table has a primary key (UUID for User, Property, Booking, Payment, Review, Message).
- ENUM fields (e.g., role, status, payment_method) are atomic.
- **Result**: The schema satisfies 1NF.

## 2NF (Second Normal Form)
- All tables use single-column primary keys (UUIDs), so 2NF applies trivially.
- Non-key attributes (e.g., name, pricepernight in Property) depend fully on the primary key.
- **Result**: The schema satisfies 2NF.

## 3NF (Third Normal Form)
- Checked for transitive dependencies (non-key attributes depending on other non-key attributes).
- **User**: All attributes (e.g., first_name, email) depend on user_id. Email is UNIQUE.
- **Property**: Attributes (e.g., name, location) depend on property_id. host_id is a foreign key.
- **Booking**: total_price is derived but stored for performance (acceptable denormalization).
- **Payment, Review, Message**: No transitive dependencies.
- **Location**: Treated as atomic (VARCHAR). Splitting into city/state/country could require a separate table but is unnecessary for this design.
- **Result**: The schema satisfies 3NF.

## Conclusion
The database design is in 3NF, with no transitive dependencies or redundancies. The total_price in Booking is a deliberate denormalization for query performance, which is common in booking systems. No further adjustments are needed.