{{
  config({    
    "materialized": "table",
    "alias": "prophecy__temp_jhbkn_post_WindowFunction_1",
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
