USE WideWorldImporters
Go

Create Table [DecodeIT] (
[ID][int] NOT NUll,
[FirstName][Varchar](30) NOT NULL,
[LastName][varchar](30) NOT NULL,
[Street Address] [varchar](60) NOT NULL,
[City] [Varchar](30) NOT NULL,
[State][Varchar](30) NOT NULL,
[Zip][int] NOT  NULL 
Constraint [PK_DecodeIT] Primary key Clustered (
[ID] ASC 

	)
)

Insert Into [dbo].[DecodeIT]
Values(1,'Naganjali','Kotaprolu','1234 41st street','Omaha','Nebraska','12345')
Insert Into [dbo].[DecodeIT]
Values(2,'Amitabh','Bacchan','5678 41st street','San Ramon','California','11110');
Insert Into [dbo].[DecodeIT]
Values(3,'Arjun','Allu','3456 145th street','Kansas','Missouri','95468');
Insert Into [dbo].[DecodeIT]
Values(4, 'Sneha','Reddy','91011 144th street','Omaha','Nebraska','68102');
Insert Into [dbo].[DecodeIT]
Values(5, 'Rakul','Singh','1213 147th street','Omaha','Nebraska','68321');

Select * from DecodeIT



