# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :client do
  	intvw_date DateTime.now
    client_id 'someID' # ID of client
    gender 'M' # M, W, T
    chronic  true
    calculate_age 25
    prescreen_total 16
    prescreen1_2 1
    prescreen35_41 1
    prescreen42_48 1
    prescreen50 1
    total_hmlss_years 1
    total_hmlss_months 12
    start_date_of_homelessness DateTime.now -1
    times_hmlss_housed_again3yrs 3
    money_regular_basis true
    drug_alcohol_abuse true
    drug_alcohol_treatment true
    alcohol_daily_last_month true
    hosp_emotions_nerves true
    mhp_professional_appt true
    mht_against_will true
    trauma_not_sought_help true
    dual_diagnosis true
    mobility_limits true
    citizenship_status 'mystring'
    military true
    jail true
    prison true
    ci_incarceration true
    hiv_aid true
    state 'mystring'
    user_id 1
    program_matched 'mystring'
    homeless_verification 'mystring'
    disability_verification 'mystring'
    income_verification 'mystring'
    identity_verification true
    created_at DateTime.now
    updated_at DateTime.now
  end
end
