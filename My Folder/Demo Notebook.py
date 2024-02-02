# Databricks notebook source
print("Hello World!")

# COMMAND ----------

# MAGIC %sql
# MAGIC SELECT "Hello world from SQL"

# COMMAND ----------

# MAGIC %run Workspace/Includes/Setup
# MAGIC

# COMMAND ----------

# MAGIC %fs ls '/databricks-datasets'
# MAGIC

# COMMAND ----------

dbutils.fs.help()

# COMMAND ----------


