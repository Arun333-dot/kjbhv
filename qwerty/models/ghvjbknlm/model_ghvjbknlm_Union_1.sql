{{
  config({    
    "materialized": "table",
    "alias": "prophecy__temp_ghvjbknlm_post_Union_1",
    "database": "database",
    "schema": "default"
  })
}}

WITH Join_1 AS (

  SELECT * 
  
  FROM `` AS in0
  INNER JOIN `` AS in1

),

Union_1 AS (

  SELECT * 
  
  FROM `` AS in0
  
  UNION
  
  SELECT * 
  
  FROM Join_1 AS in1

)

SELECT *

FROM Union_1
