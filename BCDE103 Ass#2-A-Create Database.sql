CREATE DATABASE GuestHousesLpc0045;

--Using Database
USE [GuestHousesLpc0045];
Go

CREATE TABLE guest (
	id INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	address VARCHAR(50)
);

CREATE TABLE room_type (
	id VARCHAR(6) PRIMARY KEY,
	description VARCHAR(100)
);

CREATE TABLE room (
	id INT PRIMARY KEY,
	room_type VARCHAR(6),
	max_occupancy INT,
	FOREIGN KEY (room_type) REFERENCES room_type(id)
);

CREATE TABLE calendar (
	i DATE PRIMARY KEY
);

CREATE TABLE rate (
	room_type VARCHAR(6),
	occupancy INT,
	amount DECIMAL(10,2),
	PRIMARY KEY (occupancy, room_type),
	FOREIGN KEY (room_type) REFERENCES room_type (id)
);

CREATE TABLE booking (
	booking_id INT PRIMARY KEY,
	booking_date DATE,
	room_no INT,
	guest_id INT,
	occupants INT,
	room_type_requested VARCHAR(6),
	nights INT,
	arrival_time VARCHAR(5),
	FOREIGN KEY (room_no) REFERENCES room (id),
	FOREIGN KEY (guest_id) REFERENCES guest (id),
	FOREIGN KEY (occupants, room_type_requested) REFERENCES rate (occupancy, room_type)
);

CREATE TABLE extra (
	extra_id INT PRIMARY KEY,
	booking_id INT,
	description VARCHAR(50),
	amount DECIMAL(10,2),
	FOREIGN KEY (booking_id) REFERENCES booking (booking_id)
);

ALTER TABLE booking
ADD 
FOREIGN KEY (room_type_requested) 
REFERENCES room_type (id);


