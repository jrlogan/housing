class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.stringchronic :gender
      t.integer :min_age
      t.integer :total_homeless_years
      t.integer :total_homeless_years
      t.integer :total_homeless_month
      t.integer :total_homeless_housed_again
      t.string :money_regular_basis
      t.string :drug_alcohol_abuse
      t.string :drug_alcohol_treatment
      t.string :alcohol_daily_last_month
      t.string :hosp_emotional_nerves
      t.string :mh_professional_appnt
      t.string :mht_against_will
      t.string :trauma_not_saught_treatment
      t.string :dual_diagnosis
      t.string :mobility_limits
      t.string :citizenship_status
      t.string :military
      t.string :jail
      t.string :prison
      t.string :ci_incarceration
      t.string :hiv_aids

      t.timestamps
    end
  end
end
