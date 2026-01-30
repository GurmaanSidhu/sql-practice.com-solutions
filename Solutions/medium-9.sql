-- Show the city and the total number of patients in the city.
-- Order from most to least patients and then by city name ascending.

select city, COUNT(patient_id) as num_patients FROM patients GROUP BY city order by count(patient_id) desc, city asc;