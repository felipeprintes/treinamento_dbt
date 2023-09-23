select 
    bike_type,
    sum(duration_minutes) as total_minutes
from {{ source('austin_bikeshare', 'bikeshare_trips') }}
group by bike_type
order by total_minutes