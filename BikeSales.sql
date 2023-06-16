SELECT*
FROM BikesSales


------Sales Perfomance By Country-----=-------------

SELECT Country, SUM(Order_Quantity) AS TotalQuantity, SUM(Revenue) AS TotalRevenue, SUM(Profit) AS TotalProfit
FROM BikesSales
GROUP BY Country
ORDER BY TotalRevenue DESC

------Top Selling Products By Country---------

SELECT Country, Product, SUM(Order_Quantity) AS TotalQuantity
FROM BikesSales
GROUP BY Country, Product
ORDER BY TotalQuantity DESC


------Sales Perfomance By State Within Each Country

SELECT Country, State, SUM(Revenue) AS TotalRevenue
FROM BikesSales
GROUP BY Country, State
ORDER BY Country, TotalRevenue DESC


--------State Sales Analysis-----------------------

SELECT State, SUM(Order_Quantity) AS TotalQuantity, SUM(Revenue) AS TotalRevenue, SUM(Profit) AS TotalProfit
FROM BikesSales
GROUP BY State
ORDER BY TotalRevenue DESC


------Product Perfomance Assesment----------------

SELECT Product, SUM(Order_Quantity) AS TotalQuantity, AVG(Unit_Price) AS AveragePrice 
FROM BikesSales
WHERE Unit_Price IS NOT NULL
GROUP BY Product
ORDER BY TotalQuantity DESC


-------Seasonality & Monthly Sales----------

SELECT Month, SUM(Revenue) AS TotalRevenue, SUM(Profit) AS TotalProfit
FROM BikesSales
GROUP BY Month
ORDER BY Month


--------Profit Analysis Per Product--------------

SELECT  Product_Category, Product, SUM(Cost) AS TotalCost, SUM(Revenue) AS TotalRevenue, SUM(Profit) AS TotalProfit
FROM BikesSales
GROUP BY  Product_Category, Product
ORDER BY TotalProfit DESC


------Customer Segmentation--------------------

SELECT Age_Group, Customer_Gender, COUNT(*) AS CustomerCount, AVG(Revenue) AS AverageRevenue  
FROM BikesSales
GROUP BY Age_Group, Customer_Gender


-------Sales By Age Group--------------

SELECT Age_Group, Product, SUM(Order_Quantity) AS TotalQuantity, SUM(Revenue) AS TotalRevenue   
FROM BikesSales
GROUP BY Age_Group, Product
ORDER BY TotalRevenue DESC

-------Average Order Value By Gender-----------

SELECT Customer_Gender, AVG(Revenue) AS AverageOrderValue  
FROM BikesSales
GROUP BY Customer_Gender


-----Monthly Sales Distribution By Gender--------

SELECT Month, Customer_Gender, SUM(Revenue) AS TotalRevenue   
FROM BikesSales
GROUP BY Month, Customer_Gender
ORDER BY Month 





