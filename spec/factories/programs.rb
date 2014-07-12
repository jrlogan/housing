# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :program do
    gender "M" # M, W, both
    min_age 15
    total_homeless_years 1 # 0-1
    total_homeless_month 6 # 0-12 # months homeless, at least that
    total_homeless_housed_again 1 # 0-10, how many, at least that
    chronic "Can" # Can, Cannot, Must
    money_regular_basis "Can" # Can, Cannot, Must
    drug_alcohol_abuse "Must" # Can, Cannot, Must
    drug_alcohol_treatment "Can" # Can, Cannot, Must
    alcohol_daily_last_month "Cannot" # Can, Cannot, Must
    hosp_emotional_nerves "Can" # Can, Cannot, Must
    mh_professional_appnt "Can" # Can, Cannot, Must
    mht_against_will "Must" # Can, Cannot, Must
    trauma_not_saught_treatment "Cannot" # Can, Cannot, Must
    dual_diagnosis "Can" # Can, Cannot, Must
    mobility_limits "Cannot" # Can, Cannot, Must
    citizenship_status "Must" # Can, Cannot, Must
    military "Can" # Can, Cannot, Must
    jail "Cannot" # Can, Cannot, Must
    prison "Can" # Can, Cannot, Must
    ci_incarceration "Cannot" # Can, Cannot, Must
    hiv_aids "Must" # Can, Cannot, Must
  end
end
