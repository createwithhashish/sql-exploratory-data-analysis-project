/*
=============================================================
Create Database and Tables
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouseAnalytics2' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, this script creates the gold layer 
    tables (gold_dim_customers, gold_dim_products, gold_fact_sales) and loads data from CSV files.

WARNING:
    Running this script will drop the entire 'DataWarehouseAnalytics2' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.

Note:
    The LOAD DATA LOCAL INFILE paths point to 'D:/DATA ANALTICS/SQL/sql-data-analytics-project/sql-data-analytics-project/datasets/flat-files/'.
    Change them to the folder where you saved the CSV files.
*/

-- Drop and recreate the 'DataWarehouseAnalytics2' database
DROP DATABASE IF EXISTS DataWarehouseAnalytics2;

-- Create the 'DataWarehouseAnalytics2' database
CREATE DATABASE DataWarehouseAnalytics2;

USE DataWarehouseAnalytics2;

-- =============================================================================
-- Create Tables
-- =============================================================================

CREATE TABLE gold_dim_customers (
    customer_key INT,
    customer_id INT,
    customer_number VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    country VARCHAR(50),
    marital_status VARCHAR(50),
    gender VARCHAR(50),
    birthdate DATE,
    create_date DATE
);

CREATE TABLE gold_dim_products (
    product_key INT,
    product_id INT,
    product_number VARCHAR(50),
    product_name VARCHAR(50),
    category_id VARCHAR(50),
    category VARCHAR(50),
    subcategory VARCHAR(50),
    maintenance VARCHAR(50),
    cost INT,
    product_line VARCHAR(50),
    start_date DATE
);

CREATE TABLE gold_fact_sales (
    order_number VARCHAR(50),
    product_key INT,
    customer_key INT,
    order_date DATE,
    shipping_date DATE,
    due_date DATE,
    sales_amount INT,
    quantity TINYINT UNSIGNED,
    price INT
);

-- Verify created tables
SHOW TABLES;

-- =============================================================================
-- Load Data into Tables
-- =============================================================================

LOAD DATA LOCAL INFILE 'D:/DATA ANALTICS/SQL/sql-data-analytics-project/sql-data-analytics-project/datasets/flat-files/dim_customers.csv'
INTO TABLE gold_dim_customers
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'D:/DATA ANALTICS/SQL/sql-data-analytics-project/sql-data-analytics-project/datasets/flat-files/dim_products.csv'
INTO TABLE gold_dim_products
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'D:/DATA ANALTICS/SQL/sql-data-analytics-project/sql-data-analytics-project/datasets/flat-files/fact_sales.csv'
INTO TABLE gold_fact_sales
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
