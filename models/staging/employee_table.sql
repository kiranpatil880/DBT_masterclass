{{
    config(materialized = 'table',alias = 'EMP_table',query_tag = 'DBT_RUN')
}}

with Employee_cte as(
    select * from  {{source('staging_table','EMPLOYEES')}}
)
select * from Employee_cte