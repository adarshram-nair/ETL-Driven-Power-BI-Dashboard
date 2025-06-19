CREATE TABLE customers(
CustomerID varchar(255),
CustomerName varchar(255),
Region varchar(255),
SignupDate varchar(255)
);

CREATE TABLE Products(
ProductID varchar(255),
ProductName varchar(255),
Category varchar(255),
Price varchar(255)
);

CREATE TABLE Transactions(
TransactionID varchar(255),
CustomerID varchar(255),
ProductID varchar(255),
TransactionDate varchar(255),
Quantity varchar(255),
TotalValue varchar(255),
Price varchar(255)
);

COPY customers
FROM 'E:\Project - ETL DWH BI\Current Project\Source Data\Customers.csv'
CSV HEADER;

COPY Products
FROM 'E:\Project - ETL DWH BI\Current Project\Source Data\Products.csv'
CSV HEADER;

COPY Transactions
FROM 'E:\Project - ETL DWH BI\Current Project\Source Data\Transactions.csv'
CSV HEADER;