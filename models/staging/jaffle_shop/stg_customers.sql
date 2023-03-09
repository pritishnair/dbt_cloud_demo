with stg_customers as
(
select
    id as customer_id,
    first_name,
    last_name

--from raw.jaffle_shop.customers 
from {{ source('jaffle_shop', 'customers') }} --source config via yml
)

select * from stg_customers