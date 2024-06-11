
with source_data as (
    select * from {{ source('dbt', '2010_summary') }}
)

select
    DEST_COUNTRY_NAME,
    ORIGIN_COUNTRY_NAME,
    count
from source_data
where ORIGIN_COUNTRY_NAME='United States'