-- Objective 1
-- 1. View the menu items table:
SELECT *
FROM restaurant_db.menu_items;

--2. Find the number of items on the menu:
SELECT COUNT (DISTINCT menu_item_id) AS Items_count
FROM restaurant_db.menu_items;

-- 3. What are the least and the most expensive items on the menu:
SELECT *
FROM restaurant_db.menu_items
ORDER BY price DESC;

-- 4. How many italian dishes are on the menu:
SELECT COUNT (DISTINCT menu_item_id) AS Items_count
FROM restaurant_db.menu_items
WHERE category = N'Italian'

-- 5. What are the least and the most expensive italian dishes on the menu:
SELECT *
FROM restaurant_db.menu_items
WHERE category = N'Italian'
ORDER BY price DESC;

-- 6. How many dishes are in each cathegory, what is the average price in each category:
SELECT category, COUNT (menu_item_id) AS item_count, ROUND (AVG (price), 2) as average_price
FROM restaurant_db.menu_items
GROUP BY category

-- Objective 2
-- 1. What is the date range of order_details table:
SELECT MIN (order_date), MAX (order_date)
FROM restaurant_db.order_details;

-- 2. How many orders were made within this date range:
SELECT COUNT(DISTINCT order_id) AS Orders_Made
FROM restaurant_db.order_details;

-- 3. How many items were ordered:
SELECT COUNT (*) as Items_ordered
FROM restaurant_db.order_details;

-- 4. Which order had the most number of items
SELECT TOP 1 WITH TIES order_id, COUNT (item_id)
FROM restaurant_db.order_details
GROUP BY order_id
ORDER BY COUNT (item_id) DESC;

-- 5. How many orders had more then 12 items ordered:
SELECT COUNT (*)
FROM (
    SELECT COUNT(order_id) AS num_orders
    FROM restaurant_db.order_details
    GROUP BY order_id
    HAVING COUNT (item_id) > 12
)AS subquery;

