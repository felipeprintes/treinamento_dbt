{# Qual tipo de bike mais utilizada #}

select 
    * 
from {{ ref('aux_most_used') }}
order by total_minutes desc