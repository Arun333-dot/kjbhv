WITH customers AS (

  SELECT * 
  
  FROM {{ source('prophecy-databricks-qa.dev_cmek', 'customers') }}

),

raw_orders AS (

  SELECT * 
  
  FROM {{ source('prophecy-databricks-qa.dev_cmek_table_level', 'raw_orders') }}

),

Join_1 AS (

  {#Combines customer details with raw order information for analysis.#}
  SELECT 
    in0.customer_id AS customer_id,
    in0.first_name AS first_name,
    in0.last_name AS last_name,
    in0.first_order AS first_order,
    in0.most_recent_order AS most_recent_order,
    in0.number_of_orders AS number_of_orders,
    in0.customer_lifetime_value AS customer_lifetime_value,
    in1.id AS id,
    in1.user_id AS user_id,
    in1.order_date AS order_date,
    in1.status AS status
  
  FROM customers AS in0
  INNER JOIN raw_orders AS in1
     ON in0.customer_id = in1.user_id

)

SELECT *

FROM Join_1
