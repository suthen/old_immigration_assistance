class CreateImmigrantProfiles < ActiveRecord::Migration
  def change
    create_table :immigrant_profiles do |t|
      t.string :destination_country_code
      t.string :citizenship_country_code
      t.string :postal_code
      t.date :date_of_first_entry
      t.boolean :exact_date_of_entry_known
      t.boolean :recently_traveled_outside_destination_country
      t.integer :current_age
      t.string :documentation_type
      t.date :documentation_expiry
      t.string :visa_type
      t.string :documentation_issuing_country_code
      t.string :documentation_issuing_state
      t.string :legal_status
      t.date :legal_status_expiry

      t.timestamps
    end
  end
end
