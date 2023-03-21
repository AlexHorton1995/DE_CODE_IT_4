/*
	DECODEIT Schema 1.0.0.1
*/

Drop Table CustomerInfo

--Create
Create Table CustomerInfo(
         CustomerId Int Identity(1,1) NOT NULL,
		 FirstName varchar(30) NOT NULL,
		 LastName varchar(30) NOT NULL,
		 [Address] varchar(60) NOT NULL,
		 City varchar(23) NOT NULL,
		 [State] varchar(2) NOT NULL,
		 Zipcode varchar(5) NOT NUll,
		 Email varchar(60) NULL
		    CONSTRAINT[PK_SALES_CustomerInfo] PRIMARY KEY CLUSTERED
   (
   [CUSTOMERID] ASC
   )
  )
--Insert
INSERT INTO [dbo].[CustomerInfo]
           ([FirstName]
           ,[LastName]
           ,[Address]
           ,[City]
           ,[State]
           ,[Zipcode]
           ,[Email])
     VALUES
     ('Amitabh','Bacchan','1234 Dodge St','Omaha','NE','68007', NULL),
	 ( 'Joe','Biden','4768 34th St','SanRamon','CA','51342', NULL),
	 ( 'Alex','Louis','Evans st','Kansas','MO','66110', NULL),
     ( 'Michael','Jackson','144th St','BE', 'NE', '68007', NULL),
     ( 'Amaya','Megan', '4157 N Plz', 'Omaha', 'NE', '68116' ,NULL),
     ( 'Mary','Joe','156th st','Omaha','NE', '68101', NULL);

 --SELECT
SELECT [CustomerId]
      ,[FirstName]
      ,[LastName]
      ,[Address]
      ,[City]
      ,[State]
      ,[Zipcode]
      ,[Email]
  FROM [dbo].[CustomerInfo]

--Update 
Update CustomerInfo
SET  Zipcode = '68101' , LastName = 'Jackson'
Where CustomerID = 4

--Delete
Delete from CustomerInfo where City = 'Kansas'