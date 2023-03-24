/*
	DECODEIT Schema 1.0.0.2
*/

--Anjali

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

--Erika

DROP TABLE Questionnaire2

 CREATE TABLE Questionnaire2(
	[QuestionID] [INT] IDENTITY(1,1) NOT NULL,
	[QuestionText] varchar(50) NOT NULL,
	[IsActive] bit NOT NULL,
	[QuestionAddedDate] date NOT NULL,
	[AddedBy] int NOT NULL,
	[QuestionDeleteDate] date NULL,
	[DeletedBy] int NULL
	CONSTRAINT [PK_QuestionID] PRIMARY 
	KEY CLUSTERED
		(
			QuestionID ASC
		)
	)
INSERT INTO [dbo].[Questionnaire2]
	([QuestionText]
	,[IsActive]
	,[QuestionAddedDate]
	,[AddedBy]
	)
	VALUES 
		('What are your hobbies?',1,'20230322',50),
		('Are you an introvert or an extrovert?',1,'20230322',50),
		('What are your transferable skills?',1,'20230322',50),
		('Can you describe your short and long term goals?',1,'20230322',50),
		('What courses would you like to attend?',1,'20230322',50),
		('Do you have a tech job?',1,'20230322',50),
		('Have you recommended Code Black?',1,'20230322',50),
		('Do you know your strengths and weaknesses?',1,'20230322',50),
		('What does your success look like?',1,'20230322',50),
		('How do you handle rejection?',1,'20230322',50),
		('Are you interested in an internship?',0,'20230322',50)


UPDATE [dbo].[Questionnaire2]
	SET [QuestionText] = 'Are you interested in an internship?'
	WHERE IsActive = 0
	
	
	DELETE FROM [dbo].[Questionnaire2]
	WHERE [QuestionText] = 'Are you interested in an internship?'
 
 ALTER TABLE [CBSurveyInfo]
	ADD CONSTRAINT [FK_Questionnaire2_CID]
	FOREIGN KEY (SurveyQuestion2) 
  REFERENCES [Questionnaire2] ([QuestionID])

 --Lyndon
 DROP TABLE QuestionTable3
CREATE TABLE QuestionTable3(
	[QuestionID] [INT] IDENTITY(1,1) NOT NULL,
	[QuestionText] varchar (50)NOT NULL,
	[IsActive] bit NOT NULL,
	[QuestionAddedDate] date NOT NULL,
	[AddedBy] int NOT NULL ,
	[QuestionDeleteDate] date NULL,
	[DeletedBy] int Null
	CONSTRAINT [PK_QuestionID] PRIMARY KEY CLUSTERED
	(
		QuestionID ASC
	)
)
INSERT INTO [dbo].[QuestionTable3]
           ([QuestionText]
           ,[IsActive]
           ,[QuestionAddedDate]
           ,[AddedBy]
           )
     VALUES
           ('Have you worked in tech before?',1,'20230321',23),
		   ('Have you taken any tech classes before?',1,'20230320',23),
		   ('What area of tech do you want to work in?',1,'20230320',23),
		   ('What is your age?',1,'20230320',23),
		   ('What subjects are you interested in learning?',1,'20230320',23),
		   ('Are you committed to learning code?',1,'20230320',23),
		   ('Are you currently employed in tech?',1,'20230320',23),
		   ('What county of Nebraska do you live in?',1,'20230320',23),
		   ('What are you accomplishments in tech?',1,'20230320',23),
		   ('Do you want to invest in Code black?',1,'20230320',23),
		   ('How did you hear about Code Black?',0,'20230320',23),
		   ('How did you hear about Code Black?',0,'20230320',23),
		   ('How did you hear about Code Black?',0,'20230320',23),
		   ('How did you hear about Code Black?',0,'20230320',23),
		   ('How did you hear about Code Black?',0,'20230320',23)
		   UPDATE [dbo].[QuestionTable3]
   SET [QuestionText] = 'How did you hear about Code Black?'
  WHERE IsActive = 0

  DELETE FROM [dbo].[QuestionTable3]

      WHERE [QuestionText] = 'How did you hear about Code Black?'
SELECT * FROM dbo.QuestionTable3

ALTER TABLE [CBSurveyInfo]
 ADD CONSTRAINT [FK_Questionaire3_CID]
 FOREIGN KEY(SurveyQuestion3)
 REFERENCES [Questionaire3] ([QuestionID])
 
--Tim
 /*
	Tim Davis Question Table Final
	20230322 SQL Cohort 4
 */
 
 
DROP TABLE QuestionTable1

CREATE TABLE QuestionTable1(
	[QuestionID] [INT] IDENTITY(1,1) NOT NULL,
	[QuestionText] varchar (50)NOT NULL,
	[IsActive] bit NOT NULL,
	[QuestionAddedDate] date NOT NULL,
	[AddedBy] int NOT NULL ,
	[QuestionDeleteDate] date NULL,
	[DeletedBy] int 
	CONSTRAINT [PK_QuestionID] PRIMARY KEY CLUSTERED
	(
		QuestionID ASC
	)
) 
INSERT INTO [dbo].[QuestionTable1]
           ([QuestionText]
           ,[IsActive]
           ,[QuestionAddedDate]
           ,[AddedBy]
           )
     VALUES
           ('What tech skills would you like to learn?',1,'20230320',24 ),
		   ('How did you hear about the program?',1, '20230320',24),
		   ('How will this program benefit you?',1, '20230220',24),
		   ('Are you interested in a competitive job market?',1,'20230320',24),
		   ('How will you use the skills you learn?',1,'20230320',24),
		   ('Would you like to become a mentor?',1,'20230320',24),
		   ('What is success?',1,'20230320',24),
		   ('Do you have reliable transportation?',1,'20230320',24),
		   ('What is your ethnicity?',1,'20230320',24),
		   ('Have you taken any tech classes before?',1,'20230320',24),
		   ('How did you hear about Code Black?',0,'20230320',24),
		   ('How did you hear about Code Black?',0,'20230320',24),
		   ('How did you hear about Code Black?',0,'20230320',24),
		   ('How did you hear about Code Black?',0,'20230320',24),
		   ('How did you hear about Code Black?',0,'20230320',24)

UPDATE [dbo].[QuestionTable1]
	SET [QuestionText] = 'How did you hear about Code Black?'
	 WHERE IsActive = 0
 
 DELETE FROM [dbo].[QuestionTable1]
      WHERE [QuestionText] = 'How did you hear about Code Black?' 

ALTER TABLE [CBSurveyInfo]
	ADD CONSTRAINT [FK_QuestionTable1]
	FOREIGN KEY (SurveyQuestion1)
REFERENCES [QuestionTable1] (QuestionId)


		   	
