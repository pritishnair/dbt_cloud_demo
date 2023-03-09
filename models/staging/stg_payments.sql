with stg_payment as
( select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    amount / 100 as amount,
    created as created_at  
    --from raw.stripe.payment
    from {{ source('stripe', 'payment') }}
    )

    select * from stg_payment

