CREATE DATABASE data_warehouse;
USE data_warehouse;

CREATE TABLE dim_customer (
    customer_id VARCHAR(10) PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    country VARCHAR(50),
    signup_date DATE
);

CREATE TABLE dim_product (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    base_price DECIMAL(10,2)
);

CREATE TABLE fact_transactions (
    transaction_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    product_id VARCHAR(10),
    transaction_date DATE,
    quantity INT,
    unit_price DECIMAL(10,2),
    total_amount DECIMAL(12,2),
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

USE data_warehouse;

SELECT COUNT(*) FROM dim_customer;
SELECT COUNT(*) FROM dim_product;
SELECT COUNT(*) FROM fact_transactions;

SELECT c.country, SUM(f.total_amount) AS revenue
FROM fact_transactions f
JOIN dim_customer c
ON f.customer_id = c.customer_id
GROUP BY c.country;

USE data_warehouse;

TRUNCATE TABLE fact_transactions;

SELECT COUNT(*) FROM fact_transactions;


SELECT c.country, SUM(f.total_amount) AS revenue
FROM fact_transactions f
JOIN dim_customer c
ON f.customer_id = c.customer_id
GROUP BY c.country;

# 1️ Total Revenue per Month

SELECT 
    DATE_FORMAT(transaction_date, '%Y-%m') AS month,
    SUM(total_amount) AS total_revenue
FROM fact_transactions
GROUP BY month
ORDER BY month;


# 2. Top Customers by Spending

SELECT 
    c.customer_id,
    c.full_name,
    SUM(f.total_amount) AS total_spent
FROM fact_transactions f
JOIN dim_customer c
ON f.customer_id = c.customer_id
GROUP BY c.customer_id, c.full_name
ORDER BY total_spent DESC
LIMIT 5;

# 3. Sales by Product Category

SELECT 
    p.category,
    SUM(f.total_amount) AS category_revenue
FROM fact_transactions f
JOIN dim_product p
ON f.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;
