WITH model1 AS (

  SELECT * 
  
  FROM {{ source('hive_metastore.arun123', 'model1') }}

)

SELECT *

FROM model1
