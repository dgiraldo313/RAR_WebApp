class Research < ActiveRecord::Base
  has_many :players
  has_and_belongs_to_many :risk_balloon_games
end
