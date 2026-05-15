select *from customers limit 10

SELECT  c.segment,
		oi.product_id,
		p.product_name,
		sum(oi.sales) as total_sales,
		sum(oi.quantity) as total_quantity
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
	ON p.product_id = oi.product_id 
WHERE c.segment = 'Consumer'
Group by 
c.segment,oi.product_id,p.product_name, oi.sales,oi.quantity
ORDER BY total_quantity DESC;