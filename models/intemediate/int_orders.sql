with
    stg_orders as (
        select *
        from {{ ref('stg_orders') }}
    )

    , stg_customers as (
        select *
        from {{ ref('stg_customers') }}
    )

    , customer_orders as (
        select 
            stg_customers.customer_name
            , sum(stg_orders.order_total) as total_spent
        from stg_customers
        inner join stg_orders 
            on stg_customers.customer_id = stg_orders.customer_id
        group by
            stg_customers.customer_id
            , stg_customers.customer_name
        having total_spent > 1000
    )

select *
from customer_orders

