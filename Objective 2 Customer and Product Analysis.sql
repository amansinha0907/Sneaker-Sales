# Objective 2 Customer and Product Analysis

#1. What is the average spending per customer?

Select C.CustomerID , concat(C.FirstName, C.LastName) AS FullName, ROUND(AVG (S.TotalAmount),0) from Customers C
join sales S on C.CustomerID = S.CustomerID
group by C.CustomerID, FullName;

#2. Which product is the most frequently purchased by customers?



#3. How many unique customers made purchases in each city?
#4. What is the distribution of product categories purchased by customers?
#5. How many repeat customers are there in the dataset?
#6. What is the average unit price of products purchased by customers?
#7. How does the spending behavior differ between customers from different states?
#8. Which supplier provides the most popular products?
#9. What is the most common product category purchased by customers?
#10. How many customers purchased more than one type of product?