-- Display each order along with the customer's name.
select * from orders inner join customers on customers.customer_id= orders.customer_id;

-- Display:customer name, order ID, order date
select customer_name, order_ID, order_date from orders inner join customers on customers.customer_ID=orders.customer_ID;

-- Display every product along with its category name.
select * from products inner join categories on products.category_id=categories.category_id;

-- Display:product name, price, category name
select product_name,price,category_name from products inner join categories on products.category_id=categories.category_id;


-- Display:customer_name, order_iD, product_name, quantity.
select customer_name, orders.order_ID, product_name, quantity from customers inner join orders on customers.customer_id=orders.customer_id
inner join order_items on orders.order_ID=order_items.order_ID inner join products on products.product_id=order_items.product_id;

-- Display:customer_name, product_name, category_name, quantity
select customer_name, product_name, category_name, quantity from customers inner join orders on customers.customer_ID=orders.customer_ID
inner join order_items on orders.order_id=order_items.order_id inner join products on order_items.product_ID=products.product_ID
inner join categories on products.category_id=categories.category_ID;
