-- Insert 10 Guests
INSERT INTO Guests (guest_name, email, phone) VALUES
('Ramesh Kumar', 'ramesh@mail.com', '9876543210'),
('Sita Sharma', 'sita@mail.com', '9123456780'),
('Amit Singh', 'amit@mail.com', '9988776655'),
('Neha Verma', 'neha@mail.com', '9012345678'),
('Rahul Jain', 'rahul@mail.com', '9898989898'),
('Priya Mehta', 'priya@mail.com', '9765432109'),
('Vikram Das', 'vikram@mail.com', '9654321098'),
('Anjali Gupta', 'anjali@mail.com', '9543210987'),
('Karan Roy', 'karan@mail.com', '9432109876'),
('Tanya Sharma', 'tanya@mail.com', '9321098765');

-- Insert 10 Rooms
INSERT INTO Rooms (room_number, room_type, price_per_night) VALUES
('101', 'Single', 1000.00),
('102', 'Single', 1000.00),
('103', 'Double', 1800.00),
('104', 'Double', 1800.00),
('201', 'Suite', 3500.00),
('202', 'Suite', 3500.00),
('203', 'Deluxe', 2500.00),
('204', 'Deluxe', 2500.00),
('301', 'Presidential', 5000.00),
('302', 'Presidential', 5000.00);

-- Insert 10 Bookings
INSERT INTO Bookings (guest_id, room_id, checkin, checkout) VALUES
(1, 101, '2026-01-10', '2026-01-12'),
(2, 102, '2026-01-11', '2026-01-13'),
(3, 103, '2026-01-12', '2026-01-14'),
(4, 104, '2026-01-13', '2026-01-15'),
(5, 201, '2026-01-14', '2026-01-16'),
(6, 202, '2026-01-15', '2026-01-17'),
(7, 203, '2026-01-16', '2026-01-18'),
(8, 204, '2026-01-17', '2026-01-19'),
(9, 301, '2026-01-18', '2026-01-20'),
(10, 302, '2026-01-19', '2026-01-21');



