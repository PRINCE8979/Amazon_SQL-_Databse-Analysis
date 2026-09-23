USE amazondb;

-- 1. Electronics products and their prices
SELECT product_name, price
FROM Products
WHERE category_id = 1;

-- 2. All category names
SELECT DISTINCT category_name
FROM Categories;

-- 3. Products cheaper than $50
SELECT product_name, price
FROM Products
WHERE price < 50.00;

-- 4. Products with stock above 200, most expensive first
SELECT product_name, stock_quantity
FROM Products
WHERE stock_quantity > 200
ORDER BY price DESC;

-- 5. Top 3 most expensive products
SELECT product_name, price
FROM Products
ORDER BY price DESC
LIMIT 3;

-- 6. Customers whose last name starts with 'S'
SELECT first_name, last_name
FROM Customers
WHERE last_name LIKE 'S%';

-- 7. Orders placed in October 2023
SELECT order_id, order_date
FROM Orders
WHERE order_date BETWEEN '2023-10-01' AND '2023-10-31 23:59:59';

-- 8. Each product with its category (INNER JOIN)
SELECT p.product_name, c.category_name
FROM Products p
INNER JOIN Categories c ON p.category_id = c.category_id;

-- 9. Orders with customer names
SELECT o.order_id, o.order_date, c.first_name, c.last_name
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id;

-- 10. Number of products per category (LEFT JOIN keeps empty categories)
SELECT c.category_name, COUNT(p.product_id) AS product_count
FROM Categories c
LEFT JOIN Products p ON c.category_id = p.category_id
GROUP BY c.category_name;

-- 11. Items in order 1004
SELECT p.product_name, oi.quantity
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
WHERE oi.order_id = 1004;

-- 12. Orders containing Electronics products
SELECT DISTINCT o.order_id, o.order_date
FROM Orders o
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
JOIN Categories c ON p.category_id = c.category_id
WHERE c.category_name = 'Electronics';

-- 13. Total number of customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM Customers;

-- 14. Total revenue
SELECT SUM(total_amount) AS total_revenue
FROM Orders;

-- 15. Average product price
SELECT AVG(price) AS average_price
FROM Products;

-- 16. Total items sold
SELECT SUM(quantity) AS total_items_sold
FROM OrderItems;

-- 17. Highest product price
SELECT MAX(price) AS highest_price
FROM Products;
