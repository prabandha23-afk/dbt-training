{% snapshot snap_customer_address %}  

{{
  config(      
    target_schema='snapshot_july',      
    strategy='timestamp',      
    unique_key='customer_id',      
    updated_at='updated_at'    
  )  
}}  

  select * from {{ source('stripe', 'customer_address') }}

{% endsnapshot %}