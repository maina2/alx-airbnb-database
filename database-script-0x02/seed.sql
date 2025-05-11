-- seed.sql
-- Populate database with sample data for AirBnB-like application

-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('11111111-1111-1111-1111-111111111111', 'John', 'Doe', 'john.doe@example.com', 'hashed_password1', '+1234567890', 'guest', CURRENT_TIMESTAMP),
('22222222-2222-2222-2222-222222222222', 'Jane', 'Smith', 'jane.smith@example.com', 'hashed_password2', '+0987654321', 'host', CURRENT_TIMESTAMP),
('33333333-3333-3333-3333-333333333333', 'Alice', 'Brown', 'alice.brown@example.com', 'hashed_password3', NULL, 'guest', CURRENT_TIMESTAMP),
('44444444-4444-4444-4444-444444444444', 'Bob', 'Johnson', 'bob.johnson@example.com', 'hashed_password4', '+1122334455', 'host', CURRENT_TIMESTAMP),
('55555555-5555-5555-5555-555555555555', 'Admin', 'User', 'admin@example.com', 'hashed_password5', '+6677889900', 'admin', CURRENT_TIMESTAMP);

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('66666666-6666-6666-6666-666666666666', '22222222-2222-2222-2222-222222222222', 'Cozy Cottage', 'A charming cottage in the countryside.', '123 Rural Road, Countryside', 100.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('77777777-7777-7777-7777-777777777777', '22222222-2222-2222-2222-222222222222', 'City Loft', 'Modern loft in the heart of the city.', '456 Urban Ave, Downtown', 150.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('88888888-8888-8888-8888-888888888888', '44444444-4444-4444-4444-444444444444', 'Beach House', 'Spacious house by the beach.', '789 Ocean Drive, Beachside', 200.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('99999999-9999-9999-9999-999999999999', '66666666-6666-6666-6666-666666666666', '11111111-1111-1111-1111-111111111111', '2025-06-01', '2025-06-03', 200.00, 'confirmed', CURRENT_TIMESTAMP),
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '77777777-7777-7777-7777-777777777777', '11111111-1111-1111-1111-111111111111', '2025-07-01', '2025-07-04', 450.00, 'pending', CURRENT_TIMESTAMP),
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '88888888-8888-8888-8888-888888888888', '33333333-3333-3333-3333-333333333333', '2025-08-01', '2025-08-05', 800.00, 'confirmed', CURRENT_TIMESTAMP),
('cccccccc-cccc-cccc-cccc-cccccccccccc', '66666666-6666-6666-6666-666666666666', '33333333-3333-3333-3333-333333333333', '2025-09-01', '2025-09-02', 100.00, 'canceled', CURRENT_TIMESTAMP);

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('dddddddd-dddd-dddd-dddd-dddddddddddd', '99999999-9999-9999-9999-999999999999', 200.00, CURRENT_TIMESTAMP, 'credit_card'),
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 800.00, CURRENT_TIMESTAMP, 'stripe');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('ffffffff-ffff-ffff-ffff-ffffffffffff', '66666666-6666-6666-6666-666666666666', '11111111-1111-1111-1111-111111111111', 5, 'Amazing stay, very cozy!', CURRENT_TIMESTAMP),
('gggggggg-gggg-gggg-gggg-gggggggggggg', '88888888-8888-8888-8888-888888888888', '33333333-3333-3333-3333-333333333333', 4, 'Great location, but a bit pricey.', CURRENT_TIMESTAMP);

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('hhhhhhhh-hhhh-hhhh-hhhh-hhhhhhhhhhhh', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Is the cottage available for June?', CURRENT_TIMESTAMP),
('iiiiiiii-iiii-iiii-iiii-iiiiiiiiiiii', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Yes, it’s available!', CURRENT_TIMESTAMP),
('jjjjjjjj-jjjj-jjjj-jjjj-jjjjjjjjjjjj', '33333333-3333-3333-3333-333333333333', '44444444-4444-4444-4444-444444444444', 'Loved the beach house!', CURRENT_TIMESTAMP);