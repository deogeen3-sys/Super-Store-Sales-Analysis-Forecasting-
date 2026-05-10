select Segment , `Order Date`,  sales  from superstore_sales ;


SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS ym,
    SUM(`Sales`) AS total_sales
FROM superstore_sales
where Segment = "Consumer"
GROUP BY ym
ORDER BY ym;

SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS ym,
    SUM(`Sales`) AS total_sales
FROM superstore_sales
where Segment = "Corporate"
GROUP BY ym
ORDER BY ym;

SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS ym,
    SUM(`Sales`) AS total_sales
FROM superstore_sales
where Segment = "Home Office"
GROUP BY ym
ORDER BY ym;

-- the reason of this pattern is Consumer segment 
-- lets dive into it to discover more 

SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS ym, 
    `Sub-Category`, 
    SUM(`Sales`) AS total_sales
FROM superstore_sales
WHERE Segment = "Consumer" 
GROUP BY ym, `Sub-Category`
ORDER BY ym;

SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS ym, 
    `Sub-Category`, 
    SUM(`Sales`) AS total_sales
FROM superstore_sales
WHERE Segment = "Consumer" AND `Sub-Category` ='Accessories'
GROUP BY ym
ORDER BY ym;

SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS ym, 
    `Sub-Category`, 
    SUM(`Sales`) AS total_sales
FROM superstore_sales
WHERE Segment = "Consumer" AND `Sub-Category` ='Appliances'
GROUP BY ym
ORDER BY ym;


SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS ym, 
    `Sub-Category`, 
    SUM(`Sales`) AS total_sales
FROM superstore_sales
WHERE Segment = "Consumer" AND `Sub-Category` ='Art'
GROUP BY ym
ORDER BY ym;

SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS ym, 
    `Sub-Category`, 
    SUM(`Sales`) AS total_sales
FROM superstore_sales
WHERE Segment = "Consumer" AND `Sub-Category` ='Labels'
GROUP BY ym
ORDER BY ym;

SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS ym, 
    `Sub-Category`, 
    SUM(`Sales`) AS total_sales
FROM superstore_sales
WHERE Segment = "Consumer" AND `Sub-Category` ='Binders'
GROUP BY ym
ORDER BY ym;

SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS ym, 
    `Sub-Category`, 
    SUM(`Sales`) AS total_sales
FROM superstore_sales
WHERE Segment = "Consumer" AND `Sub-Category` ='Bookcases'
GROUP BY ym
ORDER BY ym;

SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS ym, 
    `Sub-Category`, 
    SUM(`Sales`) AS total_sales
FROM superstore_sales
WHERE Segment = "Consumer" AND `Sub-Category` ='Envelopes'
GROUP BY ym
ORDER BY ym;

SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS ym, 
    `Sub-Category`, 
    SUM(`Sales`) AS total_sales
FROM superstore_sales
WHERE Segment = "Consumer" AND `Sub-Category` ='Furnishings'
GROUP BY ym
ORDER BY ym;

SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS ym, 
    `Sub-Category`, 
    SUM(`Sales`) AS total_sales
FROM superstore_sales
WHERE Segment = "Consumer" AND `Sub-Category` ='Paper'
GROUP BY ym
ORDER BY ym;

SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS ym, 
    `Sub-Category`, 
    SUM(`Sales`) AS total_sales
FROM superstore_sales
WHERE Segment = "Consumer" AND `Sub-Category` ='Phones'
GROUP BY ym
ORDER BY ym;

SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS ym, 
    `Sub-Category`, 
    SUM(`Sales`) AS total_sales
FROM superstore_sales
WHERE Segment = "Consumer" AND `Sub-Category` ='Storage'
GROUP BY ym
ORDER BY ym;

SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS ym, 
    `Sub-Category`, 
    SUM(`Sales`) AS total_sales
FROM superstore_sales
WHERE Segment = "Consumer" AND `Sub-Category` ='Tables'
GROUP BY ym
ORDER BY ym;
 