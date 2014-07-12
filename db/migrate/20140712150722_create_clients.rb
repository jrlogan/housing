class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.datetime :intvw_date
      t.string :client_id
      t.string :gender
      t.boolean :chronic
      t.integer :calculate_age
      t.integer :prescreen_total
      t.integer :prescreen1_2
      t.integer :prescreen35_41
      t.integer :prescreen42_48
	  t.integer :prescreen50
	  t.integer :total_hmlss_years
	  t.integer :total_hmlss_months
	  t.datetime :start_date_of_homelessness
	  t.integer :times_hmlss_housed_again3yrs
	  t.boolean :money_regular_basis
	  t.boolean :drug_alcohol_abuse
	  t.boolean :drug_alcohol_treatment
	  t.boolean :alcohol_daily_last_month
	  t.boolean :hosp_emotions_nerves
	  t.boolean :mhp_professional_appt
	  t.boolean :mht_against_will
	  t.boolean :trauma_not_sought_help
	  t.boolean :dual_diagnosis
	  t.boolean :mobility_limits
	  t.string :citizenship_status
	  t.boolean :military
	  t.boolean :jail
	  t.boolean :prison
	  t.boolean :ci_incarceration
	  t.boolean :hiv_aid

	  t.string :state
	  t.integer :user_id #housing liaison
	  t.string :program_matched
	  t.string :homeless_verification
	  t.string :disability_verification
	  t.boolean :income_verification
	  t.boolean :identity_verification


      t.timestamps
    end
    add_index :clients, [:user_id, :created_at]
  end
end
