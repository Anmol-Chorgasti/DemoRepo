-- Databricks notebook source
CREATE TABLE
EMPLOYEE(id INT, Employee STRING, Salary DOUBLE );

-- COMMAND ----------

INSERT INTO EMPLOYEE VALUES
(1, "Anmol", 54500),
(2, "Faris", 75000),
(3, "Lisa", 57000);

-- COMMAND ----------

select * from EMPLOYEE

-- COMMAND ----------

DESCRIBE DETAIL EMPLOYEE

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employee'

-- COMMAND ----------

UPDATE EMPLOYEE
SET Salary = Salary + 10000
WHERE Employee LIKE "A%";

-- COMMAND ----------

SELECT * FROM EMPLOYEE;

-- COMMAND ----------

DESCRIBE DETAIL EMPLOYEE

-- COMMAND ----------

DESCRIBE HISTORY EMPLOYEE

-- COMMAND ----------

SELECT * FROM EMPLOYEE@v1;

-- COMMAND ----------

DELETE FROM EMPLOYEE;

-- COMMAND ----------

RESTORE TABLE EMPLOYEE TO VERSION AS OF 2;

-- COMMAND ----------

SELECT * FROM EMPLOYEE;

-- COMMAND ----------

DESCRIBE HISTORY EMPLOYEE;

-- COMMAND ----------

OPTIMIZE EMPLOYEE
ZORDER BY (id);

-- COMMAND ----------

DESCRIBE DETAIL EMPLOYEE;

-- COMMAND ----------

DESCRIBE HISTORY EMPLOYEE

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employee'

-- COMMAND ----------


