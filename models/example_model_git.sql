-- models/example_model_git.sql

WITH source_data AS (
    SELECT
        column1,
        column2,
        column3
    FROM {{ source('snowflake_dbt', 'EXAMPLE_DATA') }}
)

SELECT
    column1,
    column2,
    column3,
    column1 + column2 + column3 AS column4
FROM source_data
