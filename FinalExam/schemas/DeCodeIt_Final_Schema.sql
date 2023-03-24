/*
	DECODEIT Schema 1.0.0.1
*/
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

 
