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