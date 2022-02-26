{{ config(materialized='table') }}

with total_cases as (

select 

TOTAL_RECOVERED ,
	TOTAL_CASES_PER_MILLION ,
	
	
	LOCATION_ISO_CODE ,
	
	TOTAL_ACTIVE_CASES ,
	
	TOTAL_DEATHS ,
	
	to_date(DATE,'mm/dd/yyyy') ,
	
	TOTAL_CASES ,
	
	TOTAL_DEATHS_PER_MILLION 
    from FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_PRADIPTA_SENGUPTA)
    select * from total_cases