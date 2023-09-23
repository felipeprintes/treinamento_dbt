select
  b.station_id,
  b.status,
  a.start_station_id,
  a.start_station_name,
  a.end_station_id,
  a.end_station_name,
from {{ source('austin_bikeshare', 'bikeshare_trips') }} a
join {{ source('austin_bikeshare', 'bikeshare_stations') }} b
on b.station_id=a.start_station_id