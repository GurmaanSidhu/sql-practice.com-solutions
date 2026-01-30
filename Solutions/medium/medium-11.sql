-- Show all allergies ordered by popularity. Remove NULL values from query.

select allergies, count(patient_id) as total_diagnosis from patients  where allergies is not null group by allergies order by count(patient_id) desc;