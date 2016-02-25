class Player < ActiveRecord::Base
  belongs_to :research
  has_many :data_output_risk_balloon
end
