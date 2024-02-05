-- Databricks notebook source
CREATE TABLE IF NOT EXISTS smartphones
(id INT, name STRING, brand STRING, year INT);

INSERT INTO smartphones
VALUES (1, "iphone 15", "apple", 2023),
(2, "iphone 14", "apple", 2022), 
(3, "iphone 13", "apple", 2021), 
(4, "One Plus 
5", "One Plus", 2020), 
(5, "Nokia 7765", "Nokia", 2006), 
(6, "Galaxy S23","Samsung", 2023), 
(7, "Oppo F9", "Oppo", 2021); 

-- COMMAND ----------

CREATE VIEW apple_phones 
AS
Select * FROM smartphones
WHERE brand = "apple";

-- COMMAND ----------

SELECT * FROM apple_phones;

-- COMMAND ----------

SHOW TABLES

-- COMMAND ----------

CREATE TEMP VIEW brands
AS
SELECT DISTINCT(brand) FROM smartphones;

-- COMMAND ----------

SELECT * FROM brands;

-- COMMAND ----------

SHOW TABLES

-- COMMAND ----------

CREATE GLOBAL TEMPORARY VIEW old_phones
AS
SELECT * FROM smartphones
WHERE year < 2022;

-- COMMAND ----------

SELECT * FROM global_temp.old_phones ORDER BY year;

-- COMMAND ----------

SHOW TABLES

-- COMMAND ----------

SHOW TABLES IN global_temp;

-- COMMAND ----------


