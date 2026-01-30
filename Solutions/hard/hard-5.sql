-- Each admission costs $50 for patients without insurance, and $10 for patients with insurance. All patients with an even patient_id have insurance.

-- Give each patient a 'Yes' if they have insurance, and a 'No' if they don't have insurance. Add up the admission_total cost for each has_insurance group.

select has_in as has_insurance, sum(ins) as cost_after_insurance from (select (case when patient_id % 2 = 0 then 'yes' else 'no' end) as has_in, (case when patient_id % 2 = 0 then 10 else 50 end) as ins from admissions) as ins group by has_in;