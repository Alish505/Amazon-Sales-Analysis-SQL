CREATE DATABASE amazonanalytics;
USE  amazonanalytics;
CREATE TABLE Orders(
Order_id varchar(50),
Order_Date Varchar (50),
Region varchar(50),
Payment_Method varchar(50),
Revenue Decimal (10,2)
);

CREATE TABLE Products(
Order_id varchar(50),
Product_id varchar(100),
Category varchar(50),
Price Decimal (10,2),
Qty_sold INT,
Rating DECIMAL(3,1)
);
SELECT* FROM Products;
SELECT* FROM Orders;
SELECT* FROM Products LIMIT 5;
SELECT* FROM Orders LIMIT 5;
SELECT
    o.Region,
    p.Category,
    SUM(o.Revenue) AS Total_Revenue
FROM Orders As o
JOIN Products AS p ON o.Order_id=
p.Order_id
GROUP BY o.Region,p.Category
ORDER BY Total_revenue DESC;
SELECT COUNT(*) FROM Products;
SELECT COUNT(*) FROM orders;
SELECT 
    o.Order_Id, 
    o.Payment_Method, 
    p.Rating, 
    p.Category
FROM Orders AS o
JOIN Products AS p ON o.Order_Id = p.Order_Id
WHERE o.Payment_Method = 'Credit Card' AND p.Rating > 4;
SELECT 
    Payment_Method, 
    AVG(Revenue) AS Avg_Ticket_Size
FROM Orders
GROUP BY Payment_Method;
