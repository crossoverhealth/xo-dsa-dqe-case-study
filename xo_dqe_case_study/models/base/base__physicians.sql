select
    id,
    first_name,
    middle_name,
    last_name,
    npi,
    specialty,
    care_site_id,
    email,
    created_at,
    updated_at
from {{ ref("seed__physicians") }}
