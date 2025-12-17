select
    id, patient_id, physician_id, start_time, end_time, status, created_at, updated_at
from {{ ref("seed__visits") }}
