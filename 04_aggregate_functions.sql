-- Find the total number of orders made by each customer.
select customer_name, count(order_id) as Total_orders from Customers inner join orders on Customers.Customer_ID=orders.Customer_ID group by Customers.customer_name;


-- Find the total quantity of products purchased by each customer.
select customer_name, sum(quantity) as Total_quantity from customers inner join orders on orders.customer_id=customers.customer_id inner join 
order_items on orders.order_id=order_items.order_id group by customer_name;

-- Find the total amount spent by each customer.
select customer_name, sum(price*quantity) as Total_Amount from customers inner join orders on customers.customer_id=orders.customer_id inner join 
order_items on orders.order_id=order_items.order_id inner join products on order_items.product_id = products.product_id group by customer_name;


-- Find how many products belong to each category.
select category_name, count(product_name) as total_products from categories inner join products on categories.category_id=products.category_id group by category_name;


-- Find the most expensive product in each category.
select category_name,  product_name, price from categories inner join products on categories.category_id=products.category_id where price= (select max(price)
as Maximum_Price from products where categories.category_id=products.category_id);