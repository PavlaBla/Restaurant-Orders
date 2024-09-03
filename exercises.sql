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

-- 6. How many dishes are in each cathegory:
SELECT category, COUNT (menu_item_id)
FROM restaurant_db.menu_items
GROUP BY category