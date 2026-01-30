-- For each day display the total amount of admissions on that day. Display the amount changed from the previous date.

select admission_date, count(patient_id) as admission_day, count(admission_date) - lag(count(admission_date),1) over (order by admission_date) as admission_count_change from admissions group by admission_date