-- Show the total amount of orders for each year/month.

select year(order_date) as order_year, month(order_date) as order_month, count(order_id) from orders group by year(order_date), month(order_date)