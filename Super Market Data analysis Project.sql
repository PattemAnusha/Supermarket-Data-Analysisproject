  # .........  Super Market Data set Project ....................

# Find out the total no of Products sold 
select sum(Quantity) as Total_No_of_Products_sold from supermarket_sales;

# Find out all Product categories / types
select distinct Product_line from supermarket_sales;

# Find out the total revenue.
select sum(Total) as Total_Revenue from supermarket_sales;

# Find out total revenue in each Branch.
select Branch,sum(Total) as Total_Revenue from supermarket_sales
group by Branch;

# Find out total products sold in each Branch.
select Branch,sum(Quantity) as Total_Products_Sold from supermarket_sales
group by Branch;

# Which City has highest sales ( highest sales = highest revenue/total)
select City,sum(Total)as Total from supermarket_sales
group by City
limit 1;

# Find out the most selling item/product.
select Product_line,sum(Quantity) as Total_Sales from supermarket_sales
group by Product_line
order by Total_Sales desc
limit 1;

# Find out the total number of products by Gender.
select Gender,sum(Quantity)as Total_No_of_Products from supermarket_sales
group by Gender;

# Find out the most popular payment method.
select Payment,count(Payment) as Payment_count from supermarket_sales
group by Payment
order by count(Payment) desc
limit 1;

# Which product has highest rating
select Product_line,avg(Rating) as Average_Rating from supermarket_sales
group by Product_line
order by avg(Rating) desc
limit 1;

# List down 5 products which has lowest rating
select Product_line,avg(Rating) as Average_Rating from supermarket_sales
group by Product_line
order by avg(Rating) 
limit 5;

# List down top 5 products which have the highest revenue.
select Product_line,sum(total) as Highest_Revenue from supermarket_sales
group by Product_line
order by Highest_Revenue desc
limit 5;

# How many products are sold in each  product category/type.
select Product_line,count(Product_line) from supermarket_sales
group by Product_line
order by count(Product_line)desc;

# Find out the total sales/revenue in each payment method.
select Payment,sum(Total) as Total_Revenue from supermarket_sales
group by Payment;

# List down top 5  cities which has highest sales
select City,sum(Total)as Total from supermarket_sales
group by City
order by sum(Total) desc
limit 5;

# List down top 5 cities which has lowest sales
select City,sum(Total)as Total from supermarket_sales
group by City
order by sum(Total)
limit 5;

# Which type of customers are ordering more ( member or normal)
select Customer_type,sum(Quantity) as Total_Orders from supermarket_sales
group by Customer_type
order by sum(Quantity) desc
limit 1;

# Find out total income on each product line / type.
select Product_line,sum(gross_income)as Total_Income from supermarket_sales
group by Product_line;SELECT * FROM universe.supermarket_sales;