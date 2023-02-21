USE WideWorldImporters
GO

--Erika

Select * from Purchasing.PurchaseOrders where SupplierID = 2

UPDATE Purchasing.PurchaseOrders 
	SET Comments = 'BACKORDERED'
	WHERE SupplierID = 2;