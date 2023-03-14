SELECT firstName, lastName, address, city, state,zipcode, email,
surveyDate, q1.questionText, answer1, q2.questionText, answer2, q3.questionText, answer3, 
isInterested FROM CustomerInfo ci
INNER JOIN SurveyInfo si on ci.customerId = si.customerId
inner join Questionaire1 Q1 on si.surveyQuestion1 = q1.questionID
inner join Questionaire2 Q2 on si.surveyQuestion2 = q2.questionID
inner join Questionaire3 Q3 on si.surveyQuestion3 = q3.questionID
