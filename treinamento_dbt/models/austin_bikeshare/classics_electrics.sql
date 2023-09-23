{# Quantas bikes elétricas e quantas normais #}

select 
  bike_type, 
  count(1) qtd_bikes
from {{ source('austin_bikeshare', 'bikeshare_trips') }}
group by bike_type