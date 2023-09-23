{% set status = 'closed' %}

select *
from {{ ref('aux_station_closed') }}
where status='{{status}}'