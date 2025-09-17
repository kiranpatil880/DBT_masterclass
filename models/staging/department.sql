{{
    config(alias ='Dept')
}}
with dept_cte as
(
    select * from {{source('staging_table','DEPARTMENTS')}}
)
select * from dept_cte