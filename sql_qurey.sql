create database walmart_db;
use walmart_db;

select count(*) from walmart;

drop table walmart;

select * from walmart;

--
select payment_method,
       count(*)
from walmart
group by payment_method;

select count(distinct Branch)
from walmart;

select max(quantity) from walmart;

-- Bussiness Problems
-- Q.1 Find different payment method and number of transcation , number of qty sold  

select payment_method,
       count(*) as no_payments,
       sum(quantity) as no_qty_sold
from walmart
group by payment_method;

-- Q.2 Identify the highest-rated category in each branch , displaying the branch , category , avg rating

SELECT *
FROM (
    SELECT 
        branch,
        category,
        AVG(rating) AS avg_rating,
        RANK() OVER (PARTITION BY branch ORDER BY AVG(rating) DESC) AS rank
    FROM walmart 
    GROUP BY branch, category
) AS ranked_categories
WHERE rank = 1;


-- Q.3 Identify the busiest day for each branch based on the number of transactions

select date from walmart ;

SELECT DISTINCT date
FROM walmart
LIMIT 10;

SELECT *
FROM (
    SELECT
        branch,
        DATE_FORMAT(STR_TO_DATE(date, '%d/%m/%Y'), '%W') AS day_name,
        COUNT(*) AS no_transactions,
        RANK() OVER (PARTITION BY branch ORDER BY COUNT(*) DESC) AS rank
    FROM walmart
    GROUP BY branch, day_name
) AS ranked_transactions
WHERE rank = 1;


-- Q.4 Calculate the quantity of items sold per payment method . list payment_method and total_quantity.

select payment_method,
       sum(quantity) as no_qty_sold
from walmart
group by payment_method;


-- Q.5 Determine the average, minimum, and maxmium rating of products for each city.
-- list the city , average_rating, min_rating, and max_rating.

select 
     city,
     category,
     min(rating) as min_rating,
     max(rating) as max_rating,
     avg(rating) as avg_rating
from walmart
group by city , category


-- Q.6 calculate the total profit for each category by considering total_profit as 
-- (unit_price * quantity * profit_margin). list category and total_profit , ordered from highest to lowest profit;

;SELECT
     category,
     sum(total) as total_revenue,
     SUM(total * profit_margin) as profit
FROM walmart
GROUP BY category;


-- Q.7 Determine the most common payment method for each branch. Display branch and the preferred_payment_method.

with cte
as
(select 
     branch,
     payment_method,
     count(*) as total_trans,
     rank() over(partition by branch order by count(*) desc) as rank
from walmart
group by 1 , 2
)
select *
from cte
where rank = 1


-- Q.8 categorize sale info 3 group morning , afternoon ,evening 
-- find outeach of the shift and number of invoices

