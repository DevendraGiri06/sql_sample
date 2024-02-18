Q1: What is order of execution in sql?

FROM > WHERE > GROUP BY > HAVING > SELECT > ORDER BY > LIMIT

-- example 
SELECT category, AVG(sales) AS avg_sales
FROM SalesData
WHERE year > 2020
GROUP BY category
HAVING COUNT(*) > 10
ORDER BY avg_sales DESC
LIMIT 3