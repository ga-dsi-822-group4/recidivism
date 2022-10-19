-- SQLite
WITH
jail AS(
    SELECT
        person_id,
        COUNT(*) AS num_jailings,
        MIN(in_custody) AS first_jailing_date,
        MIN(out_custody) AS first_jailing_release,
        MAX(in_custody) AS last_jailing_date,
        MAX(out_custody) AS last_jailing_release
    FROM
        jailhistory
    GROUP BY
        person_id
),
prison AS(
    SELECT
        person_id,
        COUNT(*) AS num_incarcerations,
        MIN(in_custody) AS first_incarceration_date,
        MIN(out_custody) AS first_incarceration_release,
        MAX(in_custody) AS last_incarceration_date,
        MAX(out_custody) AS last_incarceration_release
    FROM
        prisonhistory
    GROUP BY
        person_id
),
compas_scores AS (
SELECT
    person_id,
    type_of_assessment,
    MIN(raw_score) AS min_score,
    MIN(decile_score) AS min_decile,
    MAX(raw_score) AS max_score,
    MAX(decile_score) AS max_decile
FROM
    compas
GROUP BY
    person_id,
    type_of_assessment
)
SELECT
    p.id AS person_id,
    p.sex,
    p.race,
    p.dob AS birth_date,
    COALESCE(pr.first_incarceration_date, j.first_jailing_date) AS first_incarceration_date,
    COALESCE(pr.first_incarceration_release, j.first_jailing_release) AS first_incarceration_release,
    COALESCE(j.last_jailing_date, pr.last_incarceration_date) AS last_incarceration_date,
    COALESCE(j.last_jailing_release, pr.last_incarceration_release) AS last_incarceration_release,
    IFNULL(j.num_jailings, 0) + IFNULL(pr.num_incarcerations, 0) AS num_incarcerations,
    comp_f.min_score AS comp_f_min_score,
    comp_f.min_decile AS comp_f_min_decile,
    comp_f.max_score AS comp_f_max_score,
    comp_f.max_decile AS comp_f_max_decile,
    comp_r.min_score AS comp_r_min_score,
    comp_r.min_decile AS comp_r_min_decile,
    comp_r.max_score AS comp_r_max_score,
    comp_r.max_decile AS comp_r_max_decile,
    comp_v.min_score AS comp_v_min_score,
    comp_v.min_decile AS comp_v_min_decile,
    comp_v.max_score AS comp_v_max_score,
    comp_v.max_decile AS comp_v_max_decile
FROM
    people p
    LEFT JOIN jail j ON p.id = j.person_id
    LEFT JOIN prison pr ON p.id = pr.person_id
    LEFT JOIN compas_scores comp_f ON p.id = comp_f.person_id
        AND comp_f.type_of_assessment = 'Risk of Failure to Appear'
    LEFT JOIN compas_scores comp_r ON p.id = comp_r.person_id
        AND comp_r.type_of_assessment = 'Risk of Recidivism'
    LEFT JOIN compas_scores comp_v ON p.id = comp_v.person_id
        AND comp_v.type_of_assessment = 'Risk of Violence'   
    