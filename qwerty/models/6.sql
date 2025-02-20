WITH model AS (

  SELECT * 
  
  FROM {{ source('hive_metastore.arun123', 'model') }}

),

Reformat_1 AS (

  SELECT * 
  
  FROM model AS in0

)

SELECT *

FROM Reformat_1
