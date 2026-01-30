-- Display a single row with max_visits, min_visits, average_visits where the maximum, minimum and average number of admissions per day is calculated. Average is rounded to 2 decimal places.

SELECT
    MAX(daily_adm) AS max_visits,
    MIN(daily_adm) AS min_visits,
    ROUND(AVG(daily_adm), 2) AS average_visits
FROM
    (SELECT
        admission_date,
        COUNT(*) AS daily_adm
    FROM
        admissions
    GROUP BY
        admission_date) AS daily_counts;