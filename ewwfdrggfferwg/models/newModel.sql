WITH customers AS (

  SELECT * 
  
  FROM {{ source('prophecy-databricks-qa.dev_cmek', 'customers') }}

)

SELECT *

FROM customers
