{{
  config({    
    "materialized": "table",
    "alias": "prophecy__temp_ghvjbknlm_post_Filter_1_0",
    "database": "database",
    "schema": "default"
  })
}}

WITH Deduplicate_1 AS (

  SELECT DISTINCT *
  
  FROM `` AS in0

),

Filter_1 AS (

  SELECT * 
  
  FROM Deduplicate_1 AS in0
  
  WHERE true

)

SELECT *

FROM Filter_1
