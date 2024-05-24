-- 1) Most common room type and average prices
SELECT room_type, COUNT(*) AS count, 
ROUND(AVG(price)) AS average_price
FROM milan
GROUP BY room_type
ORDER BY count DESC;

-- 2) Average prices by neighbourhood in Milan 
SELECT neighbourhood,
ROUND(AVG(price)) AS average_price, 
COUNT(id) AS listing_count
FROM milan
GROUP BY neighbourhood
ORDER BY average_price
LIMIT 3;

SELECT neighbourhood,
ROUND(AVG(price)) AS average_price,
COUNT(id) AS listing_count
FROM milan
GROUP BY neighbourhood
ORDER BY average_price DESC
LIMIT 3;

-- And then for Rome (this dataset was previously cleaned following the same steps of the previous one)
SELECT neighbourhood,
ROUND(AVG(price)) AS average_price,
COUNT(id) AS listing_count
FROM rome
GROUP BY neighbourhood
ORDER BY average_price 
LIMIT 3;

SELECT neighbourhood,
ROUND(AVG(price)) AS average_price,
COUNT(id) AS listing_count
FROM rome
GROUP BY neighbourhood
ORDER BY average_price DESC
LIMIT 3;

-- With some CTE we put everything together for a future visualization
WITH milan_avg_prices AS (
    SELECT neighbourhood, ROUND(AVG(price)) AS avg_price, COUNT(id) AS listing_count
    FROM milan
    GROUP BY neighbourhood
),
milan_cheapest AS (
    SELECT neighbourhood, avg_price, listing_count
    FROM milan_avg_prices
    ORDER BY avg_price ASC
    LIMIT 3
),
milan_expensive AS (
    SELECT neighbourhood, avg_price, listing_count
    FROM milan_avg_prices
    ORDER BY avg_price DESC
    LIMIT 3
),
rome_avg_prices AS (
    SELECT neighbourhood, ROUND(AVG(price)) AS avg_price, COUNT(id) AS listing_count
    FROM rome
    GROUP BY neighbourhood
),
rome_cheapest AS (
    SELECT neighbourhood, avg_price, listing_count
    FROM rome_avg_prices
    ORDER BY avg_price ASC
    LIMIT 3
),
rome_expensive AS (
    SELECT neighbourhood, avg_price, listing_count
    FROM rome_avg_prices
    ORDER BY avg_price DESC
    LIMIT 3
)
SELECT 'Milan' AS city, 'Cheapest' AS type, neighbourhood, avg_price, listing_count
FROM milan_cheapest
UNION ALL
SELECT 'Milan' AS city, 'Expensive' AS type, neighbourhood, avg_price, listing_count
FROM milan_expensive
UNION ALL
SELECT 'Rome' AS city, 'Cheapest' AS type, neighbourhood, avg_price, listing_count
FROM rome_cheapest
UNION ALL
SELECT 'Rome' AS city, 'Expensive' AS type, neighbourhood, avg_price, listing_count
FROM rome_expensive;

-- 3) Busiest month to visit the city
SELECT DATE_FORMAT(last_review, '%Y-%m') AS month,
SUM(number_of_reviews) AS total_reviews
FROM milan
GROUP BY DATE_FORMAT(last_review, '%Y-%m')
ORDER BY month;

-- 4) Hosts with most listing
SELECT host_id as ID,
host_name as "name",
count(id) as listing_count
FROM milan
GROUP BY host_id, host_name
ORDER BY 3 desc;
