-- ========================================
-- HOTEL MANAGEMENT SQL QUESTIONS & SOLUTIONS
-- ========================================

-- ===================
-- BASIC LEVEL (5 Questions)
-- ===================

-- Q1: List all guests.
SELECT * FROM Guests;

-- Q2: List all rooms with price > 2000.
SELECT * FROM Rooms WHERE price_per_night > 2000;

-- Q3: List all bookings for guest_id = 1
SELECT * FROM Bookings WHERE guest_id = 1;

-- Q4: List guest names in alphabetical order
SELECT guest_name FROM Guests ORDER BY guest_name;

-- Q5: Count total number of rooms
SELECT COUNT(*) AS total_rooms FROM Rooms;

-- ===================
-- MODERATE LEVEL (5 Questions)
-- ===================

-- Q6: List all bookings with guest name and room number
SELECT g.guest_name, r.room_number, b.checkin, b.checkout
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id;

-- Q7: Total nights booked by each guest
SELECT g.guest_name, SUM(DATEDIFF(b.checkout, b.checkin)) AS total_nights
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
GROUP BY g.guest_name;

-- Q8: Rooms that are never booked
SELECT * FROM Rooms r
WHERE r.room_id NOT IN (SELECT room_id FROM Bookings);

-- Q9: Average price per room type
SELECT room_type, AVG(price_per_night) AS avg_price
FROM Rooms
GROUP BY room_type;

-- Q10: Guests who booked more than one room
SELECT g.guest_name, COUNT(b.booking_id) AS bookings_count
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
GROUP BY g.guest_name
HAVING COUNT(b.booking_id) > 1;

-- ===================
-- ADVANCED LEVEL (5 Questions)
-- ===================

-- Q11: Total revenue per room
SELECT r.room_number, SUM(DATEDIFF(b.checkout, b.checkin) * r.price_per_night) AS total_revenue
FROM Bookings b
JOIN Rooms r ON b.room_id = r.room_id
GROUP BY r.room_number;

-- Q12: Most popular room type
SELECT r.room_type, COUNT(b.booking_id) AS bookings_count
FROM Bookings b
JOIN Rooms r ON b.room_id = r.room_id
GROUP BY r.room_type
ORDER BY bookings_count DESC
LIMIT 1;

-- Q13: Guests who spent more than 5000 in total
SELECT g.guest_name, SUM(DATEDIFF(b.checkout, b.checkin) * r.price_per_night) AS total_spent
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
GROUP BY g.guest_name
HAVING total_spent > 5000;

-- Q14: Bookings overlapping a specific date (e.g., '2026-01-15')
SELECT g.guest_name, r.room_number, b.checkin, b.checkout
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
WHERE '2026-01-15' BETWEEN b.checkin AND b.checkout;

-- Q15: Top 3 guests by total nights stayed
SELECT g.guest_name, SUM(DATEDIFF(b.checkout, b.checkin)) AS total_nights
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
GROUP BY g.guest_name
ORDER BY total_nights DESC
LIMIT 3;
