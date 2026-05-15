CREATE TABLE orders (
	order_id varchar (20) Primary Key,
	order_date DATE,
	ship_mode varchar (20),
	customer_id varchar (20),
	postal_code integer,
	order_month integer, 

	foreign key (customer_id) references customers (customer_id),
	foreign key (postal_code) references location (postal_code)
); 


CREATE TABLE order_items(
	row_id Integer PRIMARY KEY, 
	order_id VARCHAR (50), 
	product_id VARCHAR (50),
	sales Integer,
	quantity Integer,
	discount Integer,
	profit Integer,
	profit_margin Integer,
	is_loss BOOLEAN,
	sales_per_unit Integer,

	foreign key (product_id) references products (product_id),
	foreign key (order_id) references orders (order_id)
);


select * from orders limit 5;


-- import location
copy location(postal_code, country, city, state, region)
FROM '/Volumes/MAK/Project of data analysis/Pyhton/United States E-Commerce Records/Tables and data/location.csv'
WITH (
    FORMAT csv,
    HEADER true
);



--- Import order_items
\copy order_items(
    row_id,
    order_id,
    product_id,
    sales,
    quantity,
    discount,
    profit,
    profit_margin,
    is_loss,
    sales_per_unit
)
FROM '/Volumes/MAK/Project of data analysis/Pyhton/United States E-Commerce Records/Tables and data/Order_items.csv'
WITH (
    FORMAT csv,
    HEADER true
);

 DROP TABLE order_items;


 CREATE TABLE order_items (
    row_id INTEGER PRIMARY KEY,
    order_id VARCHAR(50),
    product_id VARCHAR(50),
    sales NUMERIC(10,3),
    quantity INTEGER,
    discount NUMERIC(5,2),
    profit NUMERIC(10,3),
    profit_margin NUMERIC(10,3),
    is_loss BOOLEAN,
    sales_per_unit NUMERIC(10,3),

    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);