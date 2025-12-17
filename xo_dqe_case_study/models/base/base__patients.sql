select
    id,
    golden_id,
    first_name,
    middle_name,
    last_name,
    email,
    phone,
    birth_date,
    address_1,
    address_2,
    city,
    state,
    zip_code,
    country,
    created_at,
    updated_at
from {{ ref("seed__patients") }}
