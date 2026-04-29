--- 
SELECT * FROM `graphite-byte-493417-f9.Retail_Sales.Data`;

SELECT `Transaction ID`,
        Date,
        `Customer ID` 
FROM `graphite-byte-493417-f9.Retail_Sales.Data`;

SELECT DISTINCT `Product Category`
FROM `graphite-byte-493417-f9.Retail_Sales.Data` ;

SELECT DISTINCT Gender
FROM `graphite-byte-493417-f9.Retail_Sales.Data` ;

SELECT *
FROM `graphite-byte-493417-f9.Retail_Sales.Data`
WHERE Age >40 ;

SELECT *
FROM `graphite-byte-493417-f9.Retail_Sales.Data`
WHERE `Price Per Unit` BETWEEN 100 AND 500 ;

SELECT *
FROM `graphite-byte-493417-f9.Retail_Sales.Data`
WHERE `Product Category` = 'Beauty' OR `Product Category` = 'Electronics' ;

SELECT *
FROM `graphite-byte-493417-f9.Retail_Sales.Data`
WHERE `Product Category` != 'Clothing';

SELECT *
FROM `graphite-byte-493417-f9.Retail_Sales.Data`
WHERE Quantity >= 3;

SELECT COUNT (*) AS `Total_Transactions`
FROM `graphite-byte-493417-f9.Retail_Sales.Data`;

SELECT AVG (Age) AS Average_Age
FROM `graphite-byte-493417-f9.Retail_Sales.Data`;

SELECT COUNT (Quantity) AS Total_Quantity
FROM `graphite-byte-493417-f9.Retail_Sales.Data`;

SELECT MAX (`Total Amount`) AS Max_Total_Amount
FROM `graphite-byte-493417-f9.Retail_Sales.Data`;

SELECT MIN (`Price Per Unit`) AS Min_Price_Per_Unit
FROM `graphite-byte-493417-f9.Retail_Sales.Data`;

SELECT COUNT (*) AS Transaction_Count,
       `Product Category`
FROM `graphite-byte-493417-f9.Retail_Sales.Data`
GROUP BY `Product Category`;

SELECT SUM (`Total Amount`) AS Total_Revenue,
           Gender
FROM `graphite-byte-493417-f9.Retail_Sales.Data`
GROUP BY Gender;

SELECT AVG (`Price Per Unit`) AS Average_Price,
       `Product Category`
FROM `graphite-byte-493417-f9.Retail_Sales.Data`
GROUP BY `Product Category`;

SELECT SUM (`Total Amount`) AS Total_Revenue,
       `Product Category`
FROM `graphite-byte-493417-f9.Retail_Sales.Data`
GROUP BY `Product Category`
HAVING SUM (`Total Amount`) >10000;

SELECT AVG (Quantity) AS Average_Quantity,
       `Product Category`
FROM `graphite-byte-493417-f9.Retail_Sales.Data`
GROUP BY `Product Category`
HAVING AVG (Quantity) >2;

SELECT `Transaction ID`,
       `Total Amount`,
       CASE 
       WHEN `Total Amount` >1000 THEN 'High'
       ELSE 'Low'
  END AS `Spending Level`
FROM `graphite-byte-493417-f9.Retail_Sales.Data`;

SELECT `Customer ID`,
        Age,
      CASE 
       WHEN Age <30 THEN 'Youth'
       WHEN Age BETWEEN 30 AND 59 THEN 'Adult'
       ELSE 'Senior'
  END AS `Age Group`
FROM `graphite-byte-493417-f9.Retail_Sales.Data`;
