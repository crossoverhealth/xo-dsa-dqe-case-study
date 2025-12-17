select id, address_1, address_2, city, state, zip_code, country, created_at, updated_at
from {{ ref("seed__care_sites") }}
