# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :client do
  	intvw_date DateTime.now
    client_id {rand(1..100000)}
    gender { %w(M W T).sample } # M, W, T
    chronic  { [true, false].sample }
    calculate_age {rand(14..80)}
    prescreen_total { rand(0..32) }
    prescreen1_2 1
    prescreen35_41 1
    prescreen42_48 1
    prescreen50 1
    total_hmlss_years {rand(0..10)}
    total_hmlss_months {rand(0..120)}
    start_date_of_homelessness DateTime.now - 1
    times_hmlss_housed_again3yrs 3
    money_regular_basis { [true, false].sample }
    drug_alcohol_abuse { [true, false].sample }
    drug_alcohol_treatment { [true, false].sample }
    alcohol_daily_last_month { [true, false].sample }
    hosp_emotions_nerves { [true, false].sample }
    mhp_professional_appt { [true, false].sample }
    mht_against_will { [true, false].sample }
    trauma_not_sought_help { [true, false].sample }
    dual_diagnosis { [true, false].sample }
    mobility_limits { [true, false].sample }
    citizenship_status { ['Citizen', 'Permanent Resident', 'Resident Alien'].sample }
    military { [true, false].sample }
    jail { [true, false].sample }
    prison { [true, false].sample }
    ci_incarceration { [true, false].sample }
    hiv_aid { [true, false].sample }
    state 'Active'
    user_id { rand(1..5) }
    program_matched nil
    homeless_verification { [true, false].sample }
    disability_verification { [true, false].sample }
    income_verification { [true, false].sample }
    identity_verification { [true, false].sample }
    created_at DateTime.now
    updated_at DateTime.now
  end
end
