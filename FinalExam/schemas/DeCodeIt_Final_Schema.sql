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

--Katie


DROP TABLE CBSurveyInfo


CREATE TABLE CBSurveyInfo (
	[SurveyId] [INT] IDENTITY(1,1),
	[CustomerID] [INT] NOT NULL,
	[SURVEYDATE] [DATETIME] NOT NULL,
	[SURVEYQUESTION1] [VARCHAR] (50) NOT NULL,
	[ANSWER1] [VARCHAR] (50) NULL,
	[SURVEYQUESTION2] [VARCHAR] (50) NOT NULL,
	[ANSWER2] [VARCHAR] (50) NULL,
	[SURVEYQUESTION3] [VARCHAR] (50) NOT NULL,
	[ANSWER3] [VARCHAR] (50) NULL,
	[ISINTERESTED][BIT] NOT NULL ,
	CONSTRAINT [PK_SURVEYID] PRIMARY KEY CLUSTERED (
	[SURVEYID] ASC
	)
)
--TEST INSERT--

INSERT INTO [dbo].[CBSurveyInfo]
           ([CustomerID]
           ,[SURVEYDATE]
           ,[SURVEYQUESTION1]
           ,[ANSWER1]
           ,[SURVEYQUESTION2]
           ,[ANSWER2]
           ,[SURVEYQUESTION3]
           ,[ANSWER3]
           ,[ISINTERESTED])
     VALUES

		(1,'20230102','WOULD YOU LIKE TO BE A MENTOR','YES','DO YOU HAVE TRANSPORTATION','YES','WHAT IS YOUR ETHNICITY','ASIAN','TRUE'),
		(1,'20230102','WOULD YOU LIKE TO BE A MENTOR','YES','DO YOU HAVE TRANSPORTATION','YES','WHAT IS YOUR ETHNICITY','PACIFICISLANDER','TRUE'),
		(1,'20230102','WOULD YOU LIKE TO BE A MENTOR','YES','DO YOU HAVE TRANSPORTATION','YES','WHAT IS YOUR ETHNICITY','BLACK','TRUE'),
		(1,'20230102','WOULD YOU LIKE TO BE A MENTOR','YES','DO YOU HAVE TRANSPORTATION','YES','WHAT IS YOUR ETHNICITY','HISPANIC','TRUE'),
		(1,'20230102','WOULD YOU LIKE TO BE A MENTOR','YES','DO YOU HAVE TRANSPORTATION','YES','WHAT IS YOUR ETHNICITY','ASIAN','TRUE')

	

  UPDATE [dbo].[CBSurveyInfo]
   SET SURVEYDATE = '20230202'
   WHERE ANSWER3 = 'HISPANIC'

   DELETE FROM CBSurveyInfo
   WHERE ANSWER3 = 'ASIAN'

   SELECT [SurveyId]
      ,[CustomerID]
      ,[SURVEYDATE]
      ,[SURVEYQUESTION1]
      ,[ANSWER1]
      ,[SURVEYQUESTION2]
      ,[ANSWER2]
      ,[SURVEYQUESTION3]
      ,[ANSWER3]
      ,[ISINTERESTED]
  FROM [dbo].[CBSurveyInfo]

 ALTER TABLE [CBSURVEYINFO]
ADD CONSTRAINT [FK_CUSTOMERID]
FOREIGN KEY (CUSTOMERID) 
REFERENCES [CUSTOMERINFO] ([CUSTOMERID])
