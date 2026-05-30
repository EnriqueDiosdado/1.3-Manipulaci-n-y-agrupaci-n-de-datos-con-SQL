--Ejercicio 1
select p.SupplierName, c.SupplierCategoryName
from Purchasing.Suppliers as p
inner join Purchasing.SupplierCategories as c
on c.SupplierCategoryID=p.SupplierID

--Ejercicio 2
select c.FullName, p.OrderDate
from  Sales.Orders as p
inner join Application.People as c
on p.SalespersonPersonID=c.PersonID

--Ejercicio 3
select c.PackageTypeName, p.StockItemName
from  Warehouse.StockItems as p
inner join Warehouse.PackageTypes as c
on p.UnitPackageID=c.PackageTypeID

--Ejercicio 4
select o.OrderID, o.OrderDate, cust.CustomerName, city.CityName, sp.StateProvinceName
from  Sales.Orders as o
inner join Sales.Customers as cust on o.CustomerID=cust.CustomerID
inner join Application.Cities as city on cust.DeliveryCityID=city.CityID
inner join Application.StateProvinces as sp on city.StateProvinceID=sp.StateProvinceID