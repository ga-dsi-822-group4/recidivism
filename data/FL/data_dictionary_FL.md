### Data Dictionary: Florida Dataset

People dataset (1 row per person):


| field                        | data type | description                                                                          |
| ---------------------------- | --------- | ------------------------------------------------------------------------------------ |
| person_id                    | int       | unique ID per person assigned by original study, primary key                         |
| sex                          | string    | "Male" or "Female" only                                                              |
| race                         | string    | 6 racial groupings                                                                   |
| birth_date                   | string    | birth date in YYYY-MM-DD (+ time) format                                             |
| first_incarceration_date     | string    | date of first incarceration (jail/prison) in YYYY-MM-DD (+ time) format              |
| first_incarceration_release  | string    | date of release from first incarceration (jail/prison) in YYYY-MM-DD (+ time) format |
| last_incarceration_date      | string    | date of last incarceration (jail/prison) in YYYY-MM-DD (+ time) format               |
| last_incarceration_release   | string    | date of release from last incarceration (jail/prison) in YYYY-MM-DD (+ time) format  |
| num_incarcerations           | int       | total unique incarcerations (jail/prison)                                            |
| comp_f_min_score             | int       | minimum risk of failure to appear as scored by COMPAS algorithm                      |
| comp_f_min_decile            | int       | minimum decile of risk of failure to appear as scored by COMPAS algorithm            |
| comp_f_max_score             | int       | maximum risk of failure to appear as scored by COMPAS algorithm                      |
| comp_f_max_decile            | int       | maximum decile of risk of failure to appear as scored by COMPAS algorithm            |
| comp_r_min_score             | int       | minimum risk of recidivism as scored by COMPAS algorithm                             |
| comp_r_min_decile            | int       | minimum decile of risk of recidivism as scored by COMPAS algorithm                   |
| comp_r_max_score             | int       | maximum risk of recidivism as scored by COMPAS algorithm                             |
| comp_r_max_decile            | int       | maximum decile of risk of recidivism as scored by COMPAS algorithm                   |
| comp_v_min_score             | int       | minimum risk of violent recidivism as scored by COMPAS algorithm                     |
| comp_v_min_decile            | int       | minimum decile of risk of violent recidivism as scored by COMPAS algorithm           |
| comp_v_max_score             | int       | maximum risk of violent recidivism as scored by COMPAS algorithm                     |
| comp_v_max_decile            | int       | maximum decile of risk of violent recidivism as scored by COMPAS algorithm           |


Charges dataset (1 row per charge):


| field                        | data type | description                                                                          |
| ---------------------------- | --------- | ------------------------------------------------------------------------------------ |
| person_id                    | int       | unique ID per person assigned by original study, foreign key to people dataset       |
| case_number                  | string    | unique case number as assigned by justice system                                     |
| offense_date                 | datetime  | date offense was committed                                                           |
| charge_degree                | string    | indication of degree of charge - M for misdemeanor, F for felony, or infraction type |
| charge                       | string    | text of charge (e.g., "Assault & battery")                                           |
| arrest_date                  | datetime  | date of arrest for charge (if applicable)                                            |
