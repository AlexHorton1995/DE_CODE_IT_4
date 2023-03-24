SELECT CustomerName, CustomerCategoryName, PEEPS.FullName PrimaryContact, 
CASE 
	WHEN POP.FullName IS NULL THEN 'None'   
	ELSE POP.FullName 
END AS SecondContact,  
CASE 
	WHEN PEEPS.OtherLanguages IS NOT NULL THEN 'other language'
	ELSE 'non-language' 
END AS PRIMARYLANGUAGE,
CASE 
	WHEN POP.OtherLanguages IS NOT NULL THEN 'other language'
	ELSE 'non-language' 
END AS SECONDLANGUAGE
FROM SALES.Customers CUST
INNER JOIN Sales.CustomerCategories CAT ON CUST.CustomerCategoryID = 
	CAT.CustomerCategoryID
LEFT OUTER JOIN Application.People AS PEEPS ON PEEPS.PersonID = CUST.PrimaryContactPersonID
LEFT OUTER JOIN Application.People AS POP ON POP.PersonID = CUST.AlternateContactPersonID
WHERE BuyingGroupID IS NULL


SELECT * FROM Sales.Customers WHERE BuyingGroupID IS NOT NULL
SELECT * FROM Application.People
SELECT * FROM Sales.CustomerCategories


