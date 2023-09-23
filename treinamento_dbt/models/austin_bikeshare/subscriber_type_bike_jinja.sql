{% set bikes = ["classic", "electric"] %}

select
    subscriber_type,
    {% for b_type in bikes %}
        sum(case when bike_type='{{b_type}}' then duration_minutes end) as {{b_type}},
    {% endfor %}
from {{ source('austin_bikeshare', 'bikeshare_trips') }}
group by subscriber_type