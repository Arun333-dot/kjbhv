{{
  config({    
    "materialized": "table",
    "alias": "prophecy__temp_ghvjbknlm_post_WindowFunction_1_0",
    "database": "database",
    "schema": "default"
  })
}}

WITH Aggregate_1 AS (

  SELECT * 
  
  FROM `` AS in0

),

WindowFunction_1 AS (

  SELECT * 
  
  FROM Aggregate_1 AS in0

)

SELECT *

FROM WindowFunction_1
