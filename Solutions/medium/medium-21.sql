-- Display the total amount of patients for each province. Order by descending.

select p.province_name, count(pp.patient_id) as patient_count from patients pp join province_names p on pp.province_id = p.province_id group by pp.province_id order by count(pp.patient_id) desc;