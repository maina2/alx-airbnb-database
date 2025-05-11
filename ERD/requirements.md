# ERD Requirements
This Entity-Relationship Diagram (ERD) represents the AirBnB-like database system. It includes six entities: User, Property, Booking, Payment, Review, and Message. Each entity has attributes as defined in the database specification, with primary keys (UUIDs), foreign keys, and constraints (e.g., UNIQUE, NOT NULL, ENUM). Relationships are modeled as follows:
- User to Property: One-to-Many (host_id links to user_id).
- User to Booking: One-to-Many (user_id links to user_id).
- Property to Booking: One-to-Many (property_id links to property_id).
- Booking to Payment: One-to-Many (booking_id links to booking_id).
- Property to Review: One-to-Many (property_id links to property_id).
- User to Review: One-to-Many (user_id links to user_id).
- User to Message: Many-to-Many (sender_id and recipient_id link to user_id).
The ERD was created using Draw.io and is saved as `erd.png` in the ERD/ directory.