class Player < ActiveRecord::Base
  belongs_to :research
  has_one :data_output_risk_balloon
end
