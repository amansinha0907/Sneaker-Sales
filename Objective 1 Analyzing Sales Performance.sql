Create database Sneaker_Sales;
#Objective 1: Analyzing Sales Performance

#1. What is the total sales amount generated by each sales representative?

SELECT SR.SalesRepID, SR.FirstName, SR.LastName, SUM(S.TotalAmount) AS total_sales 
FROM sales_reprentative SR 
JOIN sales S ON SR.SalesRepID = S.SalesRepID 
GROUP BY SR.SalesRepID, SR.FirstName, SR.LastName
ORDER BY total_sales DESC;


#2. How many products have been sold in each store location?

SELECT S.StoreLocation, Count(S.ProductID) AS total_products_Sold
FROM Sales S 
GROUP BY S.StoreLocation
ORDER BY total_products_Sold DESC;

#3. Which product category has the highest total sales amount?

SELECT P.Category, SUM(S.TotalAmount) AS total_sales 
FROM products P 
JOIN sales S ON P.ProductID = S.ProductID 
GROUP BY P.Category
ORDER BY total_sales DESC;	

#4. What is the average quantity of products sold per sale?

select Round(AVG((S.Quantity)),0) AS AVG_Product_Per_Sale from sales S;

#5. Which customer has made the highest number of purchases?

select C.CustomerID, concat(C.FirstName ," ", C. LastName ) As FullName, Count(S.saleID) AS Nunber_Of_Purchases From customers C 
Join Sales S on C.CustomerID = S.CustomerID 
group by C.CustomerID, FullName
order By Nunber_Of_Purchases DESC;

#6. What is the distribution of total sales amounts across different months?


#7. How does the sales performance of different regions compare?

Select S.StoreLocation, sum(S.TotalAmount) from sales S
group by S.StoreLocation;

#8. What is the total sales amount generated for each product?

Select P.ProductID , P.ProductName, sum(S.TotalAmount) from products P
join sales S on P.ProductID = S.ProductID
group by P.ProductID, P.ProductName;

#9. What is the average sales amount per transaction?

Select round(AVG(totalAmount),1)from sales;

#10. How many sales transactions were made by each sales representative?

Select SR.SalesRepID, concat(SR.FirstName," ",SR.LastName) AS FullName , Sum(S.TotalAmount)
from sales_reprentative SR
join sales S
group by SR.SalesRepID, FullName;
