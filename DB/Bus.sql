﻿CREATE TABLE [dbo].[Table]
(
	[BusNo] INT NOT NULL PRIMARY KEY IDENTITY(438, 1), 
    [BusName] VARCHAR(50) NOT NULL, 
    [Time] TIME NOT NULL, 
    [Seats] INT NOT NULL
)
