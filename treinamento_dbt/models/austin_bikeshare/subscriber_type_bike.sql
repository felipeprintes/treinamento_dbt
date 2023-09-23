{# Tipo de bike mais utilizada para cada tipo de subscriber_type #}

select
  subscriber_type,
  sum(case when bike_type='classic' then duration_minutes end) as classic,
  sum(case when bike_type='electric' then duration_minutes end) as electric,
from {{ source('austin_bikeshare', 'bikeshare_trips') }}
group by subscriber_type