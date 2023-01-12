USE WideWorldImporters
GO

SELECT SUM(TOTAL) TotalOrder from (
	SELECT OrdID, CustID, OrderDate, Total 
	FROM(
		SELECT O.OrderID OrdID, O.CustomerID CustID, OrderDate, UnitPrice Total 
		FROM sales.Orders O
		inner join sales.OrderLines OL (NOLOCK) ON OL.OrderID = O.OrderID
	) SUBQ
) SubOfSubQ
where OrdID = 56970

SELECT OrdID, CustID, OrderDate, Total 
FROM(
	SELECT O.OrderID OrdID, O.CustomerID CustID, OrderDate, UnitPrice Total 
	FROM sales.Orders O
	inner join sales.OrderLines OL (NOLOCK) ON OL.OrderID = O.OrderID
) SUBQ
where ordid = 56970