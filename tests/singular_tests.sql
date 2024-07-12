 select * from {{ ref('stg_orders') }}
where status = 'return_pending'
 