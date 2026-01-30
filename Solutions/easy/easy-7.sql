-- Show first name, last name, and the full province name of each patient.
-- Example: 'Ontario' instead of 'ON'

select p.first_name, p.last_name, m.province_name from patients p inner join province_names m on p.province_id=m.province_id;