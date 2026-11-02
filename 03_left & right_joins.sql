-- Display every customer and their orders, including customers who have never placed an order.
select * from customers left join orders on customers.customer_id=orders.customer_id;

-- Find customers who have never placed an order.
select customer_name from customers left join orders on customers.customer_id=orders.customer_id where order_id is null;

-- Find products that have never been ordered.
select product_name from products left join order_items on products.product_id=order_items.product_id where order_id is null;

-- Display all customers and their orders, including customers who have never placed an order.
select customer_name, order_id, order_date from orders right join customers on orders.customer_id = customers.customer_id;

-- Display all categories and their products, including categories that do not have any products.
SELECT category_name, product_name, price FROM products RIGHT JOIN categories ON products.category_id = categories.category_id;