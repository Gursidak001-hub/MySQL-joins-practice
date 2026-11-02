-- Find customers who purchased both Electronics AND Clothing.
select customer_name from customers inner join orders on customers.customer_id=orders.customer_id inner join order_items on orders.order_id=order_items.order_id 
inner join products on products.product_id=order_items.product_id inner join categories on categories.category_id=products.category_id where category_name in ("Electronics" , "Clothing")
group by customer_name having count(distinct category_name) =2;


-- Find customers who purchased products from all four categories.
select customer_name from customers inner join orders on customers.customer_id=orders.customer_id inner join order_items on orders.order_id=order_items.order_id 
inner join products on products.product_id=order_items.product_id inner join categories on categories.category_id=products.category_id group by customer_name
having count(distinct category_name)=4;