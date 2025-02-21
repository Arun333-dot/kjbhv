{{
  config({    
    "materialized": "table",
    "alias": "prophecy__temp_ghvjbknlm_post_Reformat_1_0",
    "database": "database",
    "schema": "default"
  })
}}

WITH FlattenSchema_1 AS (

  SELECT * 
  
  FROM `` AS in0

),

Limit_1 AS (

  SELECT * 
  
  FROM FlattenSchema_1 AS in0
  
  LIMIT 10

),

OrderBy_1 AS (

  SELECT * 
  
  FROM Limit_1 AS in0
  
  ORDER BY 'vjhbkn'

),

Reformat_1 AS (

  SELECT * 
  
  FROM OrderBy_1 AS in0

)

SELECT *

FROM Reformat_1
