
USE GuestHousesLpc0045;
Go

--Import Data to Booking
BULK
INSERT [dbo].[booking]
FROM 'C:\Users\Chung\Desktop\DataFiles\booking.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2
);
GO

--Import Data to calendar
BULK
INSERT [dbo].[calendar]
FROM 'C:\Users\Chung\Desktop\DataFiles\calendar.csv'
WITH
(
ROWTERMINATOR = '\n',
FIRSTROW = 2
);
GO

--Import Data to guest
BULK
INSERT [dbo].[guest]
FROM 'C:\Users\Chung\Desktop\DataFiles\guest.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2
);
GO

--Import data to rate
BULK
INSERT [dbo].[rate]
FROM 'C:\Users\Chung\Desktop\DataFiles\rate.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2
);
GO

--Import Data to room
BULK
INSERT [dbo].[room]
FROM 'C:\Users\Chung\Desktop\DataFiles\room.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2
);
GO

--Import Data to Room Type
BULK
INSERT [dbo].[room_type]
FROM 'C:\Users\Chung\Desktop\DataFiles\room_type.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2
);
GO

--Import Data to extra
--Before can import Extra table
--Need to fix the Data by replace  ), = \n
--Then replace ) = blank
BULK
INSERT [dbo].[extra]
FROM 'C:\Users\Chung\Desktop\DataFiles\extra.csv'
WITH
(
FORMAT = 'CSV',
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);
GO
