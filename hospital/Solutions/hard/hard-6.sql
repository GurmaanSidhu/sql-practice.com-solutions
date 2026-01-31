-- Show the provinces that has more patients identified as 'M' than 'F'. Must only show full province_name

select pp.province_name from province_names pp join patients p on pp.province_id = p.province_id group by pp.province_name having sum(case when gender='M' then 1 else 0 end) > sum(case when gender='F' then 1 else 0 end)