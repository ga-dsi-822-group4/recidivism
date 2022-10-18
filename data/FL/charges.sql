SELECT
    c.person_id,
    c.case_number,
    c.offense_date,
    c.charge_degree,
    c.charge,
    MIN(a.arrest_date) AS arrest_date
FROM
    charge c
    LEFT JOIN casearrest a ON c.case_number = a.case_number
GROUP BY
    c.person_id,
    c.case_number,
    c.offense_date,
    c.charge_degree,
    c.charge