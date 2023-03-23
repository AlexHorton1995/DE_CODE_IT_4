/*
	DECODEIT Schema 1.0.0.1
*/
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

SELECT * FROM dbo.QuestionTable1


		   	
