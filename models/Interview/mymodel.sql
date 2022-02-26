select a.LOCATION_ISO_CODE,sum(a.TOTAL_DEATHS) as total_deaths,max(c.NEW_DEATHS_PER_MILLION) as NEW_DEATHS_PER_MILLION,b.location
from {{ ref('Total_cases') }} as a left join {{ ref('location_info') }} as b left join {{ ref('cases_info') }} as c
on a.location_iso_code=b.location_iso_code
and a.location_iso_code=c.location_iso_code
group by a.LOCATION_ISO_CODE,b.location