class Player < ActiveRecord::Base
  belongs_to :research
  has_many :data_output_risk_balloon

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_presence_of :sex
  validates_presence_of :DOB
  validates_presence_of :college_major
  validates_presence_of :year_of_graduation
  validates_presence_of :graduated?
  validates_presence_of :race
  validates_presence_of :household_size
  validates_presence_of :household_income
  validates_presence_of :research_id


end
