with 
    source as (
        select * 
        from {{ ref("raw_products") }}
    )

    , renamed as (
        select
            sku as product_id
            , name as product_name
            , type as product_type
            , description as product_description
            ---- numerico
            , {{ cents_to_dollars('price') }} as product_price
            ----

        from source

    )

select *
from renamed