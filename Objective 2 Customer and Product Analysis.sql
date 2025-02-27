use project_sneaker;
### Objective 2: Customer and Product Analysis

### 1. What is the average spending per customer?
select customers.customerID, round(avg(totalAmount))as "spending" from customers 
join sales on customers.customerID=sales.customerID
group by customers.customerID;

### 2. Which product is the most frequently purchased by customers?


### 3. How many unique customers made purchases in each city?
select sales.StoreLocation, count(distinct customers.customerID)as Number_of_customers from sales 
join customers on customers.customerID=sales.customerID
group by sales.StoreLocation;

### 4. What is the distribution of product categories purchased by customers?


### 5. How many repeat customers are there in the dataset?
select customers.customerID, count(*) from customers
group by customers.customerID having count(*)>1;

### 6. What is the average unit price of products purchased by customers?
select products.productID, round(avg(totalAmount))as "average purchase price" from products 
join sales on products.productID=sales.productID
group by products.productID;

### 7. How does the spending behavior differ between customers from different states?
### 8. Which supplier provides the most popular products?
### 9. What is the most common product category purchased by customers?


### 10. How many customers purchased more than one type of product?
select sales.quantity from sales
where quantity>1;