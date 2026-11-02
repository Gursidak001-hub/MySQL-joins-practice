-- Find the customer who spent the most money.
select customer_name, sum(Price*quantity) Total_amount_Spent from customers inner join orders on customers.customer_id=orders.customer_id inner join 
order_items on orders.order_id=order_items.order_id inner join products on order_items.product_id = products.product_id group by customer_name
order by Total_amount_Spent desc  limit  1;

-- Find the category that generated the most revenue.
select category_name, sum(price*quantity) as Total_revenue from categories inner join products on categories.category_id=products.category_id inner join order_items
on order_items.product_id=products.product_id group by category_name order by Total_revenue desc limit 1;

-- Find the top 3 customers by total spending.
select customer_name, sum(price*quantity) as Total_spending from customers inner join orders on customers.customer_id=orders.customer_id inner join 
order_items on orders.order_id=order_items.order_id inner join products on order_items.product_id = products.product_id group by customer_name order by 
Total_spending desc limit 3;

-- Display each customer's:customer_name, number_of_orders, total_items_purchased, total_spent
select customer_name, count(distinct orders.order_id) as number_of_orders, Sum(quantity) as total_items_purchased, sum(price*quantity) as total_spent from customers inner join 
orders on customers.customer_id=orders.customer_id inner join order_items on orders.order_id=order_items.order_id inner join products on order_items.product_id = products.product_id
group by customer_name;

-- Find customers who purchased Electronics.
select customer_name from customers inner join orders on customers.customer_id=orders.customer_id inner join order_items on orders.order_id=order_items.order_id 
inner join products on products.product_id=order_items.product_id inner join categories on categories.category_id=products.category_id where category_name ="Electronics";
