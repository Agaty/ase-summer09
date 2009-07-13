class Ambulance < ActiveRecord::Base
  belongs_to :incident
  belongs_to :availability
end
