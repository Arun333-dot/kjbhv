{{
  config({    
    "materialized": "table"
  })
}}

WITH dsfg AS (

  SELECT * 
  
  FROM {{ source('prophecy-databricks-qa.dev_cmek_table_level', 'dsfg') }}

),

customers AS (

  SELECT * 
  
  FROM {{ source('prophecy-databricks-qa.dev_cmek', 'customers') }}

),

Join_1 AS (

  {#Combines customer details with additional information for analysis.#}
  SELECT 
    in0.customer_id AS customer_id,
    in0.first_name AS first_name,
    in0.last_name AS last_name,
    in0.first_order AS first_order,
    in0.most_recent_order AS most_recent_order,
    in0.number_of_orders AS number_of_orders,
    in0.customer_lifetime_value AS customer_lifetime_value,
    in1.age AS age
  
  FROM customers AS in0
  INNER JOIN dsfg AS in1
     ON in0.customer_id = in1.age

),

Subgraph_1 AS (

  WITH Reformat_1 AS (
  
    SELECT * 
    
    FROM customers AS in0
  
  )
  
  SELECT * 
  
  FROM Reformat_1

)

SELECT *

FROM Join_1
