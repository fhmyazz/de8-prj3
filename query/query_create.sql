CREATE TABLE if not EXISTS dim_users (
	user_id INT NOT NULL,
	user_first_name VARCHAR(255) NOT NULL,
	user_last_name VARCHAR(255) NOT NULL,
	user_gender VARCHAR(50) NOT NULL,
	user_address VARCHAR(255),
	user_created DATE NOT NULL,
	PRIMARY KEY (user_id)
);

CREATE TABLE if not EXISTS fact_orders(
	order_id INT NOT NULL,
	order_date DATE NOT NULL,
	user_id INT NOT NULL,
	order_price INT NOT NULL,
	order_discount INT,
	order_total INT NOT NULL,
	PRIMARY KEY (order_id),
	CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES dim_users (user_id)
);