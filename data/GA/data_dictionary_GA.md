### Data Dictionary: Georgia Dataset

The features included in this dictionary are all that remained after data cleaning. A full data dictionary of all features can be found [here](https://nij.ojp.gov/funding/nij-recidivism-forecasting-challenge.pdf).

| field          | data type   | description                                       |
| -------------- | ----------- | ------------------------------------------------- |
|gender_male|int|1 or 0 indicating male (1) or female (0).|
|age_at_release|object|Age group at time of prison release.|
|gang_affiliated|int|1 or 0 indicating gang affiliation (1 is True, 0 is False).|
|supervision_risk_score_first|float|First Parole Supervision Risk Assessment Score (1-10, where 1=lowest risk).|
|education_level|object|Education Grade Level at Prison Entry (High school, High School diploma, at least some college).|
|dependents|int|Number of dependents at prison entry.|
|prison_years|object|Years in Prison Prior to Parole Release (<1, 1-2, 2-3, 3+)|
|prior_arrest_episodes_felony|int|Number of prior arrests listed in the Georgia Crime Information Center, with most serious charge = felony|
|prior_arrest_episodes_misd|int|Number of prior arrests listed in the Georgia Crime Information Center, with most serious charge = misdemeanor|
|prior_arrest_episodes_violent|int|Number of prior arrests listed in the Georgia Crime Information Center, with most serious charge = violent crime|
|prior_arrest_episodes_property|int|Number of prior arrests listed in the Georgia Crime Information Center, with most serious charge = property crime|
|prior_arrest_episodes_drug|int|Number of prior arrests listed in the Georgia Crime Information Center, with most serious charge = drug-related|
|prior_arrest_episodes_ppviolationcharges|int|Number of prior arrests listed in the Georgia Crime Information Center, with most serious charge = parole violation|
|prior_arrest_episodes_dvcharges|int|1 or 0 indicating any prior arrests with domestic violence charges listed in the Georgia Crime Information Center (1 is True, 0 is False).|
|prior_arrest_episodes_guncharges|int|1 or 0 indicating any prior arrests with gun charges listed in the Georgia Crime Information Center (1 is True, 0 is False).|
|condition_mh_sa|int|1 or 0 indicating mental health or substance abuse programming as a parole condition (1 is True, 0 is False).|
|condition_cog_ed|int|1 or 0 indicating cognitive skills or education programming as a parole condition (1 is True, 0 is False).|
|condition_other|int|1 or 0 indicating other parole condition e.g. no victim contact, electronic monitoring, restitution, or sex offender registration/programming (1 is True, 0 is False).|
|violations_electronicmonitoring|int|1 or 0 indicating any parole violation for electronic monitoring (1 is True, 0 is False).|
|violations_instruction|int|1 or 0 indicating any parole violation for not following instructions (1 is True, 0 is False).|
|violations_failtoreport|int|1 or 0 indicating any parole violation for failure to report (1 is True, 0 is False).|
|violations_movewithoutpermission|int|1 or 0 indicating any parole violation for moving without permission (1 is True, 0 is False).|
|delinquency_reports|int|Number of parole delinquency reports.|
|program_attendances|int|Number of program attendances.|
|residence_changes|int|Number of residence changes/moves (new zip codes) during parole.|
|avg_days_per_drugtest|float|Average days on parole between drug tests.|
|drugtests_thc_positive|int|1 or 0 indicating a positive THC test returned at any time during parole (1 is True, 0 is False).|
|drugtests_cocaine_positive|int|1 or 0 indicating a positive cocaine test returned at any time during parole (1 is True, 0 is False).|
|drugtests_meth_positive|int|1 or 0 indicating a positive methamphetamine test returned at any time during parole (1 is True, 0 is False).|
|drugtests_other_positive|int|1 or 0 indicating a positive (other) drug test returned at any time during parole (1 is True, 0 is False).|
|percent_days_employed|float|Percent of days employed while on parole.|
|recidivism_within_3years|int|1 or 0 indicating any new felony/misdemeanor crime arrest within 3 years of parole supervision start (1 is True, 0 is False).|
