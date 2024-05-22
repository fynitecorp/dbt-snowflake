
-- models/example_model.sql

WITH source_data AS (
    SELECT
        column1,
        column2,
        column3
    FROM {{ source('FIVETRAN_METADATA', 'EXAMPLE_DATA') }}
)

SELECT
    column1,
    column2,
    column3,
    column1 + column2 + column3 AS column4
FROM source_data
