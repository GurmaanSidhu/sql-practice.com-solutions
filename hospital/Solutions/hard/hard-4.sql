-- All patients who have gone through admissions, can see their medical documents on our site. Those patients are given a temporary password after their first admission. Show the patient_id and temp_password.

-- The password must be the following, in order:
-- 1. patient_id
-- 2. the numerical length of patient's last_name
-- 3. year of patient's birth_date

select patient_id, concat(patient_id, length(last_name), year(birth_date)) as temp_password from patients where patient_id in (select patient_id from admissions where admission_date is not null group by patient_id)