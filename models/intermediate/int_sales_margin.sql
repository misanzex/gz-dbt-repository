SELECT 
    *
    , purchase_price * quantity AS purchase_cost
    , revenue - (purchase_price * quantity) AS margin
FROM 
    {{ ref('stg_raw__sales') }} AS sales
JOIN 
    {{ ref('stg_raw__product') }} AS products
USING 
    (products_id)

