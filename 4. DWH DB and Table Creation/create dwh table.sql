--create customers_dim table
CREATE TABLE customers_dim(
customer_id varchar(15),
cus_surr_id integer PRIMARY KEY,
region varchar(255),
signup_date date,
data_version integer,
valid_from timestamp,
valid_to timestamp,
current varchar(5)
);

--create products_dim table
CREATE TABLE products_dim(
product_id varchar(15),
prod_surr_id integer PRIMARY KEY,
product_name varchar(255),
category varchar(255),
price numeric,
data_version integer,
valid_from timestamp,
valid_to timestamp,
current varchar(5)
);

--create customers_dim table
CREATE TABLE transactions_fact(
transaction_id varchar(15) PRIMARY KEY,
cus_surr_id integer,
prod_surr_id integer,
transaction_date date,
transaction_time time,
price numeric,
quantity numeric,
CONSTRAINT trans_cus_fk FOREIGN KEY (cus_surr_id) REFERENCES customers_dim(cus_surr_id) ON DELETE SET NULL,
CONSTRAINT trans_prod_fk FOREIGN KEY (prod_surr_id) REFERENCES products_dim(prod_surr_id) ON DELETE SET NULL
);