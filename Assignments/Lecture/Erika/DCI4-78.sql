USE WideWorldImporters
GO

--CREATE TABLE DECodeIT (
--	 ID int NOT NULL,	
--	 FirstName varchar(30) NOT NULL,
--	 LastName varchar(30) NOT NULL,
--	 StreetAddress varchar(30) NOT NULL,
--	 City varchar (30) NOT NULL,
--	 State varchar (30) NOT NULL,
--	 Zip char (5) NULL,
--CONSTRAINT [PK_DECodeIT] PRIMARY KEY CLUSTERED
--	(	
--	ID ASC
--	)
--) ON [PRIMARY]

INSERT INTO [dbo].[DECodeIT]
		  (	[ID] 
		  ,	[FirstName] 
		  ,	[LastName] 
		  ,	[StreetAddress] 
		  ,	[City] 
		  ,	[State] 
		  ,	[Zip])
	   Values
			(1, 'Erika', 'Guembes', '125N31St', 'Omaha', 'NE', '11111'),
			(2, 'Erika', 'Guembes', '15N31St', 'Omaha', 'NE', '11111'),
			(3, 'Erika', 'Guembes', '12N31St', 'Omaha', 'NE', '11111'),
			(4, 'Erika', 'Guembes', '25N31St', 'Omaha', 'NE', '11111'),
			(5, 'Erika', 'Guembes', '121N31St', 'Omaha', 'NE', '11111')

--SELECT ID, FirstName, LastName, StreetAddress, City, State, Zip FROM dbo.DECodeIT
		