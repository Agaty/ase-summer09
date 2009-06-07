class Ambulance < ActiveRecord::Base
  belongs_to :incident
end
