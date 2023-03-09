--DCI4-81.sql
--Author: Lyndon Orange
--Version 1.0.0
--Purpose: This is an example of how to create a table and add rows


USE WideWorldImporters
GO

CREATE TABLE DEcodeIT(

	[StudentID] [int] NOT NULL,
	[StudentFirstName] [varchar] (50) Not Null,
	[StudentLastName] [varchar] (50) Not Null,
	[Studentaddress] [varchar] (70) Not Null,
	[StudentCity] [varchar] (20) Null,
	[StudentState] [varchar] (20) Null,
	[StudentZip] [int] Not Null,

	CONSTRAINT [PK_DecodeIT] PRIMARY KEY CLUSTERED(
	[StudentID] ASC
	)
)

Insert Into [DEcodeIT] (StudentID, StudentFirstName, StudentLastName, Studentaddress, StudentCity, StudentZip) 
 Values(01, 'Lyndon', 'Orange', '4906 Aspen Drive', 'Omaha', 68157)
 Insert Into [DEcodeIT] (StudentID, StudentFirstName, StudentLastName, Studentaddress, StudentCity, StudentZip) 
 Values(02, 'Pamela', 'Orange', '4906 Aspen Drive', 'Omaha', 68157)
 Insert Into [DEcodeIT] (StudentID, StudentFirstName, StudentLastName, Studentaddress, StudentCity, StudentZip) 
 Values(03, 'Bryce', 'Curry', '709 Fleetwood Drive', 'Bellevue',68157)
 Insert Into [DEcodeIT] (StudentID, StudentFirstName, StudentLastName, Studentaddress, StudentCity, StudentZip) 
 Values(04, 'John', 'Orange', '1235 Main Street', 'Clarksdale', 038145)
 Insert Into [DEcodeIT] (StudentID, StudentFirstName, StudentLastName, Studentaddress, StudentCity, StudentZip) 
 Values(05, 'Tony', 'Orange', '5431 Orange Ave', 'Oxford',038154)

Select * FROM  DecodeIT