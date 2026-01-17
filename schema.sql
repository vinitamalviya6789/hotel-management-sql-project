-- Hotel Management Database Schema

CREATE TABLE guests (
    guest_id INT PRIMARY KEY,
    guest_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE rooms (
    room_id INT PRIMARY KEY,
    room_type VARCHAR(20),
    price_per_night INT,
    floor_no INT
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY,
    guest_id INT,
    room_id INT,
    checkin DATE,
    checkout DATE
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    booking_id INT,
    amount INT,
    payment_mode VARCHAR(20)
);
