class ImmigrantProfile < ActiveRecord::Base
  attr_accessible :citizenship_country_code, :current_age, :date_of_first_entry, :destination_country_code, :documentation_expiry, :documentation_issuing_country_code, :documentation_issuing_state, :documentation_type, :exact_date_of_entry_known, :legal_status, :legal_status_expiry, :postal_code, :recently_traveled_outside_destination_country, :visa_type
end
