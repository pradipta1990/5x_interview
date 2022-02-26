{{ config(materialized='table') }}

with location_info as (
  select distinct location,LOCATION_ISO_CODE,location_level,Country,CONTINENT,ISLAND,TOTAL_URBAN_VILLAGES,PROVINCE,TOTAL_CITIES,TOTAL_DISTRICTS,
  POPULATION_DENSITY,POPULATION,special_status from FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_PRADIPTA_SENGUPTA
)
select * from location_info