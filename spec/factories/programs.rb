# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :program do
    gender %w(M W T B).sample # M, W, both
    min_age { rand(0..80) }
    total_homeless_years {rand(0..1)} # 0-1
    total_homeless_month {rand(0..12)} # 0-12 # months homeless, at least that
    total_homeless_housed_again {rand(0..10)} # 0-10, how many, at least that
    chronic { %w(Can Cannot Must).sample }
    money_regular_basis { %w(Can Cannot Must).sample }
    drug_alcohol_abuse { %w(Can Cannot Must).sample }
    drug_alcohol_treatment { %w(Can Cannot Must).sample }
    alcohol_daily_last_month { %w(Can Cannot Must).sample }
    hosp_emotional_nerves { %w(Can Cannot Must).sample }
    mh_professional_appnt { %w(Can Cannot Must).sample }
    mht_against_will { %w(Can Cannot Must).sample }
    trauma_not_saught_treatment { %w(Can Cannot Must).sample }
    dual_diagnosis { %w(Can Cannot Must).sample }
    mobility_limits { %w(Can Cannot Must).sample }
    citizenship_status { %w(Can Cannot Must).sample }
    military { %w(Can Cannot Must).sample }
    jail { %w(Can Cannot Must).sample }
    prison { %w(Can Cannot Must).sample }
    ci_incarceration { %w(Can Cannot Must).sample }
    hiv_aids { %w(Can Cannot Must).sample }
  end
end
