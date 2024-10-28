-- Add your sql here
select customers.customer_name as 'Customer', printf('$%.2f', SUM(subscriptions.subscription_length * subscriptions.price_per_month)) AS 'Amount Due'
from orders 
inner join subscriptions using (subscription_id)
inner join customers using(customer_id)
where order_status='unpaid' and description='Fashion Magazine'
group by customers.customer_name
order by customer_name;
