-- Show the total amount of male patients and the total amount of female patients in the patients table.
-- Display the two results in the same row.

select SUM(case when gender='M' then 1 else 0 end) as male_count, SUM(case when gender='F' then 1 else 0 end) as female_count from patients