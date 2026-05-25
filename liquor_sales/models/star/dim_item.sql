SELECT DISTINCT
    item_number,
    item_description,
    category,
    category_name,
    vendor_number,
    vendor_name,
    pack,
    bottle_volume_ml
/* FROM {{ source('iowa_liquor_sales', 'sales') }}  Previous code */
FROM {{ ref('item_snapshot') }}
WHERE CURRENT_TIMESTAMP > dbt_valid_from AND dbt_valid_to IS NULL