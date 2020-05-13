--Testing Data GuestHouseLpc0045

USE [GuestHousesLpc0045];
GO

--1. Checking the number of row of each Table
SELECT COUNT(*)
FROM [dbo].[booking] AS Total_booking;
GO

SELECT COUNT(*)
FROM [dbo].[calendar] AS Calendar_Count;
GO

SELECT COUNT(*)
FROM [dbo].[extra] AS Extra_Count;
GO

SELECT COUNT(*)
FROM [dbo].[guest] AS Total_Guest;
GO

SELECT COUNT(*)
FROM [dbo].[rate] AS Rate_Count;
GO

SELECT COUNT(*)
FROM [dbo].[room] AS Total_room;
GO

SELECT COUNT(*)
FROM [dbo].[room_type] AS Total_Room_type;
GO

--2. Testing Values of Room

SELECT room_type
FROM room;
GO

SELECT room_type
FROM room
WHERE room_type = 'single';

SELECT COUNT(room_type) AS Double_Room
FROM room
WHERE room_type = 'double';
GO

--Testing Guest Data
SELECT id, first_name
FROM guest;
GO

SELECT address
FROM guest;
GO

SELECT address
FROM guest
WHERE id = 1001;
GO

SELECT address
FROM guest
WHERE address LIKE '%West%';
GO

--Testing Booking Data
SELECT * FROM booking;
GO

SELECT
[booking_date], [guest_id],[room_type_requested]
FROM [dbo].[booking];
GO

SELECT [booking_date],[room_no]
FROM [dbo].[booking]
WHERE [room_type_requested] = 'single';
GO

SELECT [booking_date]
FROM [dbo].[booking]
WHERE [nights] > 1;
GO

SELECT [room_no], [guest_id], [occupants],[arrival_time]
FROM [dbo].[booking]
WHERE [arrival_time] >= '22:00';
