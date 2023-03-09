with stg_orders as (
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status
    --from raw.jaffle_shop.orders
    from {{ source('jaffle_shop', 'orders') }}
)

select * from stg_orders