SELECT 
*

FROM {{ ref('stg_raw__sales') }} sales
JOIN {{ ref('stg_raw__ship') }} ship



ON sales.orders_id = ship.orders_id;

