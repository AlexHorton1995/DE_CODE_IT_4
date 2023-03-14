
/* DROP key constraints for Survey Info Table */
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[FK_Questionaire1_QID]') AND type in (N'F'))
BEGIN
	ALTER TABLE [dbo].[SurveyInfo]
		DROP CONSTRAINT [FK_Questionaire1_QID]
END
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[FK_Questionaire2_QID]') AND type in (N'F'))
BEGIN
	ALTER TABLE [dbo].[SurveyInfo]
		DROP CONSTRAINT [FK_Questionaire2_QID]
END
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[FK_Questionaire3_QID]') AND type in (N'F'))
BEGIN
	ALTER TABLE [dbo].[SurveyInfo]
		DROP CONSTRAINT [FK_Questionaire3_QID]
END
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[FK_CustomerID]') AND type in (N'F'))
BEGIN
	ALTER TABLE [dbo].[SurveyInfo]
		DROP CONSTRAINT [FK_CustomerID]
END
GO


IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerInfo]') AND type in (N'U'))
	DROP TABLE [dbo].[CustomerInfo]
GO

CREATE TABLE [dbo].[CustomerInfo] (
	customerId INT NOT NULL,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	address VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL,
	state VARCHAR(50) NOT NULL,
	zipcode VARCHAR(50) NOT NULL,
	email VARCHAR(50) NULL
	CONSTRAINT [PK_CustomerInfo] PRIMARY KEY CLUSTERED(
		customerId asc
	)
)
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SurveyInfo]') AND type in (N'U'))
	DROP TABLE [dbo].[SurveyInfo]
GO

CREATE TABLE [dbo].[SurveyInfo] (
	surveyId INT NOT NULL,
	customerId INT NOT NULL,
	surveyDate DATE NOT NULL,
	surveyQuestion1 INT NOT NULL,
	answer1 VARCHAR(50) NULL,
	surveyQuestion2 INT NOT NULL,
	answer2 VARCHAR(50) NULL,
	surveyQuestion3 INT NOT NULL,
	answer3 VARCHAR(50) NULL,
	isInterested BIT NOT NULL,
	CONSTRAINT [PK_SurveyInfo] PRIMARY KEY CLUSTERED(
		surveyId ASC
	)
)
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Questionaire1]') AND type in (N'U'))
	DROP TABLE [dbo].[Questionaire1]
GO

CREATE TABLE [dbo].[Questionaire1] (
	questionID INT NOT NULL,
	questionText VARCHAR(50) NOT NULL,
	isActive INT NOT NULL,
	questionAddedDate DATE NOT NULL,
	addedBy INT NOT NULL,
	questionDeletedDate VARCHAR(50) NULL,
	deletedBy VARCHAR(50) NULL,
	CONSTRAINT [PK_Questionaire1] PRIMARY KEY CLUSTERED(
		questionID ASC
	)
)
GO

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Questionaire2]') AND type in (N'U'))
	DROP TABLE [dbo].[Questionaire2]
GO

CREATE TABLE [dbo].[Questionaire2] (
	questionID INT NOT NULL,
	questionText VARCHAR(50) NOT NULL,
	isActive INT NOT NULL,
	questionAddedDate DATE NOT NULL,
	addedBy INT NOT NULL,
	questionDeletedDate VARCHAR(50) NULL,
	deletedBy VARCHAR(50) NULL,
	CONSTRAINT [PK_Questionaire2] PRIMARY KEY CLUSTERED(
		questionID ASC
	)
)
GO


IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Questionaire3]') AND type in (N'U'))
	DROP TABLE [dbo].[Questionaire3]
GO

CREATE TABLE [dbo].[Questionaire3] (
	questionID INT NOT NULL,
	questionText VARCHAR(50) NOT NULL,
	isActive INT NOT NULL,
	questionAddedDate DATE NOT NULL,
	addedBy INT NOT NULL,
	questionDeletedDate VARCHAR(50) NULL,
	deletedBy VARCHAR(50) NULL,
	CONSTRAINT [PK_Questionaire3] PRIMARY KEY CLUSTERED(
		questionID ASC
	)
)
GO

/* READD KEY CONSTRAINTS */

ALTER TABLE [dbo].[SurveyInfo]
ADD CONSTRAINT [FK_Questionaire1_QID]
FOREIGN KEY (surveyQuestion1) REFERENCES [dbo].[Questionaire1](questionID); 	

ALTER TABLE [dbo].[SurveyInfo]
ADD CONSTRAINT [FK_Questionaire2_QID]
FOREIGN KEY (surveyQuestion2) REFERENCES [dbo].[Questionaire2](questionID); 	

ALTER TABLE [dbo].[SurveyInfo]
ADD CONSTRAINT [FK_Questionaire3_QID]
FOREIGN KEY (surveyQuestion3) REFERENCES [dbo].[Questionaire3](questionID); 	

ALTER TABLE [dbo].[SurveyInfo]
ADD CONSTRAINT [FK_CustomerID]
FOREIGN KEY (customerId) REFERENCES [dbo].[CustomerInfo](customerId); 	
	

/* DEFAULT DATA INSERTS */

insert into Questionaire1 (questionID, questionText, isActive, questionAddedDate, addedBy, questionDeletedDate, deletedBy) values (1, 'How did you hear about Code Black?', 1, '2023-03-26 08:50:59', 389, null, null);
insert into Questionaire2 (questionID, questionText, isActive, questionAddedDate, addedBy, questionDeletedDate, deletedBy) values (1, 'What subjects should we cover?', 1, '2023-03-26 10:12:20', 244, null, null);
insert into Questionaire3 (questionID, questionText, isActive, questionAddedDate, addedBy, questionDeletedDate, deletedBy) values (1, 'What suggestions do you have?', 1, '2023-03-25 04:36:35', 596, null, null);

insert into CustomerInfo (customerId, firstName, lastName, address, city, state, zipcode, email) values (1, 'Helen', 'Haysey', '847 Gerald Way', 'Boise', 'ID', '83711', 'hhaysey0@addtoany.com');
insert into CustomerInfo (customerId, firstName, lastName, address, city, state, zipcode, email) values (2, 'Winfred', 'Harrower', '1 Oakridge Junction', 'Bradenton', 'FL', '34282', 'wharrower1@gnu.org');

insert into SurveyInfo (surveyId, customerId, surveyDate, surveyQuestion1, answer1, surveyQuestion2, answer2, surveyQuestion3, answer3, isInterested) values (1, 1, '2023-02-27 09:38:47', 1, 'through a friend', 1, 'all types', 1, 'more sleeping', 0);
