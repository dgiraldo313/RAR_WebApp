class Research < ActiveRecord::Base
  has_many :players
  has_many :risk_balloon_games
end
