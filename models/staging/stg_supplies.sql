with 
    source as (
        select * 
        from {{ ref('raw_supplies') }}
    )

    , renamed as (
        select 
                id as supply_id
                , name as supply_name
                , sku as product_id
                , {{ cents_to_dollars('cost') }} as supply_cost
                , perishable as is_perishable_supply
            from source
        )

select * 
from renamed