INSERT INTO dim_users (user_id,user_first_name,user_last_name,user_gender,user_address,user_created) VALUES 
(100101,'Budi','Gunawan','Male','Jl. Pondok Indah No.1, Kecamatan Pondok Labu, Bandung Raya, Jawa Barat','2022-01-13'),
(100102,'Eva','Susanti','Female','Jl. Timur Raya No. 13, Kramat Jaya, Jakarta Timur, DKI Jakarta','2022-01-29'),
(100103,'Dana','Pradana','Male','Jl. Pahlawan, Surabaya, Jawa Timur','2022-02-11');

INSERT INTO fact_orders (order_id,order_date,user_id,order_price,order_discount,order_total) VALUES
(1110001,'2022-01-20',100101,250000,15000,230000),
(1110002,'2022-01-29',100102,620000,40000,575000),
(1110003,'2022-02-13',100103,6000000,1000000,4995000);
