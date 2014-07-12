# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :program do
    gender "" # M, W, both
    min_age 15
    total_homeless_years 1 # 0-1
    total_homeless_month 1 # 0-12 # months homeless, at least that
    total_homeless_housed_again 1 # 0-10, how many, at least that
    chronic "String" # Can, Cannot, Must
    money_regular_basis "MyString" # Can, Cannot, Must
    drug_alcohol_abuse "MyString" # Can, Cannot, Must
    drug_alcohol_treatment "MyString" # Can, Cannot, Must
    alcohol_daily_last_month "MyString" # Can, Cannot, Must
    hosp_emotional_nerves "MyString" # Can, Cannot, Must
    mh_professional_appnt "MyString" # Can, Cannot, Must
    mht_against_will "MyString" # Can, Cannot, Must
    trauma_not_saught_treatment "MyString" # Can, Cannot, Must
    dual_diagnosis "MyString" # Can, Cannot, Must
    mobility_limits "MyString" # Can, Cannot, Must
    citizenship_status "MyString" # Can, Cannot, Must
    military "MyString" # Can, Cannot, Must
    jail "MyString" # Can, Cannot, Must
    prison "MyString" # Can, Cannot, Must
    ci_incarceration "MyString" # Can, Cannot, Must
    hiv_aids "MyString" # Can, Cannot, Must
  end
end
