-- Databricks notebook source
SELECT *
FROM workspace.default.data_co_supply_chain_dataset
LIMIT 10;

-- COMMAND ----------

SELECT
    SUM(`Sales per customer`) AS Total_Sales
FROM workspace.default.data_co_supply_chain_dataset;

-- COMMAND ----------

SELECT
    SUM(`Benefit per order`) AS Total_Profit
FROM workspace.default.data_co_supply_chain_dataset;

-- COMMAND ----------

SELECT
    COUNT(*) AS Total_Orders
FROM workspace.default.data_co_supply_chain_dataset;

-- COMMAND ----------

SELECT
    `Category Name`,
    ROUND(SUM(`Sales per customer`), 2) AS Total_Sales
FROM workspace.default.data_co_supply_chain_dataset
GROUP BY `Category Name`
ORDER BY Total_Sales DESC;

-- COMMAND ----------

SELECT
    `Product Name`,
    ROUND(SUM(`Sales per customer`), 2) AS Total_Sales
FROM workspace.default.data_co_supply_chain_dataset
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- COMMAND ----------

SELECT
    `Category Name`,
    ROUND(SUM(`Benefit per order`), 2) AS Total_Profit
FROM workspace.default.data_co_supply_chain_dataset
GROUP BY `Category Name`
ORDER BY Total_Profit DESC;

-- COMMAND ----------

SELECT
    MONTH(TO_TIMESTAMP(`order date (DateOrders)`, 'M/d/yyyy H:mm')) AS Order_Month,
    ROUND(SUM(`Sales per customer`), 2) AS Total_Sales
FROM workspace.default.data_co_supply_chain_dataset
GROUP BY MONTH(TO_TIMESTAMP(`order date (DateOrders)`, 'M/d/yyyy H:mm'))
ORDER BY Order_Month;

-- COMMAND ----------

SELECT
    `Delivery Status`,
    COUNT(*) AS Total_Orders
FROM workspace.default.data_co_supply_chain_dataset
GROUP BY `Delivery Status`
ORDER BY Total_Orders DESC;

-- COMMAND ----------

SELECT
    `Customer City`,
    COUNT(*) AS Total_Orders
FROM workspace.default.data_co_supply_chain_dataset
GROUP BY `Customer City`
ORDER BY Total_Orders DESC
LIMIT 10;

-- COMMAND ----------

SELECT
    `Customer Country`,
    COUNT(*) AS Total_Orders
FROM workspace.default.data_co_supply_chain_dataset
GROUP BY `Customer Country`
ORDER BY Total_Orders DESC
LIMIT 10;

-- COMMAND ----------

SELECT
    ROUND(AVG(`Sales per customer`), 2) AS Average_Order_Value
FROM workspace.default.data_co_supply_chain_dataset;

-- COMMAND ----------

